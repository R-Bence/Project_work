var config = require("./dbconfig");
const sql = require("mysql");

let pool = sql.createPool(config);

//Összes termék
async function allProduct() {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM mobil.get_products;', (error, elements) => {
            if (error) {
                return reject(error)
            }
            return resolve(elements);
        });
    });
}

//A legdrágább termék ára
async function GetMaxPrice(){
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM mobil.get_max_price',(error, elements) =>{
            if (error) {
                console.log(error);
                return reject(error)
            }
            console.log(elements[0].price)
            return resolve(elements[0].price);
        })
    })
}

//Részletes adatok egy termékhez
async function all_details(id) {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM mobil.product_all_details where base_id = ?;',[id], (error, elements) => {
            if (error) {
                return reject(error)
            }
            return resolve(elements);
        });
    });
}

//Összes márka
async function all_brand() {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM mobil.brand;', (error, elements) => {
            if (error) {
                return reject(error)
            }
            return resolve(elements);
        });
    });
}

//infinity scroll
async function selectProductPerPage(pageNo) {
    const offset = (pageNo - 1) * 10; 

    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM mobil.get_products ORDER BY id LIMIT ?, 10', [offset], (error, elements) => {
            if (error) {
                return reject(error);
            }
            return resolve(elements);
        });
    });
}


//Lekéri a szürt adatokat
async function select_search_data(fil) {
    console.log(fil);
    return new Promise((resolve, reject) => {
        let whereQuery = "SELECT base.base_id as id, base.name, base.price, brand.brand_name, base.img FROM base JOIN brand ON base.brand = brand.brand_id WHERE ";
        let values = [];

        if (fil.keyword) {
            whereQuery += "name LIKE ? ";
            values.push('%'+fil.keyword+'%');
        }
        if (fil.brand) {
            if (fil.keyword) {
                whereQuery += "AND ";
            }
            whereQuery += "brand_name LIKE ? ";
            values.push(fil.brand);
        }
        if(fil.max){
            if(fil.keyword || fil.brand){
                whereQuery +="and ";
            }
            whereQuery += "price <= ? ";
            values.push(fil.max)
        }

        console.log(whereQuery);
        console.log(values);

        pool.query(whereQuery, values, (error, elements) => {
            if (error) {
                return reject(error);
            }
            return resolve(elements);
        });
    });
}


//Login
async function select_user(email, pass) {
    return new Promise((resolve, reject) => {
        pool.query('SELECT mobil.user.user_email FROM mobil.user WHERE mobil.user.user_email = ? AND mobil.user.user_pass = SHA2(?, 256);',[email, pass],(error, results) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(results);
                }
            }
        );
    });
}

//user profile
async function get_user_profil(email){
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM mobil.user WHERE mobil.user.user_email like ?',[email],(error, results) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(results);
                }
            }
        );
    });
}

//Rendelések megtekintése
async function getOrders(id){
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM mobil.rendel where user_id = ?;',id, (error, results)=>{
            if(error){
                reject(error);
            }
            else{
                resolve(results);
            }
        })
    })
}

//Regisztráció
async function reg_new_user(data){
    return new Promise((resolve, reject) =>{
        pool.query('INSERT INTO mobil.user (user_email, user_tel, user_pass, user_type, postcode, city, street) values (?,?,SHA2(?,256),1, ?, ?, ?)',[data.email,data.number,data.pass,data.postcode, data.city, data.street], (error,results)=>{
            if(error){
                reject(error);
            }
            else{
                resolve(results)
            }
        })
    })
}

//profil módosítás
async function update_user_prof(data) {
    return new Promise((resolve, reject) => {
        let sql = 'update mobil.user set ';
        let arr = [];
        if (data.email) {
            sql += 'user_email = ?, ';
            arr.push(data.email);
        }
        if (data.pass) {
            sql += 'user_pass = SHA2(?, 256), ';
            arr.push(data.pass);
        }
        if (data.number) {
            sql += 'user_tel = ?, ';
            arr.push(data.number);
        }
        if (data.postcode) {
            sql += 'postcode = ?, ';
            arr.push(data.postcode);
        }
        if (data.city) {
            sql += 'city = ?, ';
            arr.push(data.city);
        }
        if (data.street) {
            sql += 'street = ?, ';
            arr.push(data.street);
        }
        sql = sql.slice(0, -2);
        sql += ' where user_id = ? ';
        arr.push(data.id);
        console.log(sql);
        pool.query(sql, arr, (error, elements) => {
            if (error) {
                return reject(error);
            }
            return resolve(elements);
        });
    });
};

//Rendelés leadás
async function order(data) {
    return new Promise((resolve, reject) => {
        pool.query('INSERT INTO `mobil`.`order` (`user_id`, `orderLocation`, `status`) VALUES (?, ?, 1)', [data.user_id, data.address], (error, results) => {
            if (error) {
                return reject(error);
            }
            const lastOrderId = results.insertId;
            const promises = data.phone.map(element => {
                return new Promise((resolve, reject) => {
                    pool.query('INSERT INTO `mobil`.`base_conn_order` (`product_id`, `order_id`, `db`) VALUES (?, ?, ?)', [element.products.base_id, lastOrderId, element.quantity], (error, results) => {
                        if (error) {
                            return reject(error);
                        }
                        pool.query('SELECT db FROM `mobil`.`base` WHERE `base_id` = ?', [element.products.base_id], (error, results) => {
                            if (error) {
                                return reject(error);
                            }
                            const newQuantity = results[0].db - element.quantity;
                            if (newQuantity <= 0) {
                                pool.query('DELETE FROM `mobil`.`base_conn_order` WHERE order_id = ?',[lastOrderId], (error,results)=>{
                                    if(error) return reject(error);
                                })
                                pool.query('DELETE FROM `mobil`.`order` WHERE order_id = ?',[lastOrderId], (error,results)=>{
                                    if(error) return reject(error);
                                })
                                return reject("Nincs elég termék raktáron a rendelés leadásához");
                            }
                            pool.query('UPDATE `mobil`.`base` SET `db` = ? WHERE (`base_id` = ?);', [newQuantity, element.products.base_id], (error, results) => {
                                if (error) {
                                    return reject(error);
                                }
                                resolve();
                            });
                        });
                    });
                });
            });

            Promise.all(promises)
                .then(() => {
                    resolve('Siker');
                })
                .catch(error => {
                    reject(error);
                });
        });
    });
}

//fiók törlése
async function deleteAccount(id){
    return new Promise((resolve, reject) => {
        pool.query('DELETE FROM `mobil`.`user` WHERE user_id = ?',[id], (error, results)=>{
            if(error){
                reject(error);
            }
            else{
                resolve(results);
            }
        })
    })
}




module.exports ={
    allProduct,
    selectProductPerPage,
    select_search_data,
    select_user,
    get_user_profil,
    reg_new_user,
    update_user_prof,
    all_brand,
    all_details,
    order,
    getOrders,
    GetMaxPrice,
    deleteAccount
}