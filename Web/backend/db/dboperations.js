var config = require("./dbconfig");
const sql = require("mysql");

let pool = sql.createPool(config);

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

async function selectProductPerPage(pageNo){
    return new Promise((resolve,reject) => {
        pool.query('Select * from base order by id limit ? 10 '[(pageNo-1)*10], (error,elements)=>{
            if(error){
                return reject(error)
            }
            return resolve(elements)
        })
    })
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

async function reg_new_user(data){
    return new Promise((resolve, reject) =>{
        pool.query('INSERT INTO mobil.user (user_name,user_email, user_tel, user_pass, user_type) values (?,?,?,SHA2(?,256),1)',[data.name, data.email,data.number,data.pass], (error,results)=>{
            if(error){
                reject(error);
            }
            else{
                resolve(results)
            }
        })
    })
}

async function update_user_prof(data){
    return new Promise((resolve, reject) => {
        let sql = 'update mobil.user set ';
        let arr = [];
        if(data.name){
            sql+= 'user_name =? '
            arr.push(data.name);
        }
        if(data.email){
            sql+=' user_email= ? '
            arr.push(data.email);
        }
        if(data.pass){
          sql+=' user_pass= SHA2(?,256) '
          arr.push(data.pass);
        }
        if(data.number){
            sql+=' user_tel= ? '
            arr.push(data.number);
          }
        sql += ' where user_id = ? '
        arr.push(data.id);
        console.log(sql);
        pool.query(sql,arr,(error, elements) =>
        {
            if(error) {return reject(error)}
            return resolve(elements);
        });
    });
  };

async function order(data){
    return new Promise((resolve, reject) =>{
        data.forEach(element => {
            console.log(element);
        });
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
    order
}