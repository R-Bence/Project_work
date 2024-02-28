var config = require("./dbconfig");
const sql = require("mysql");

let pool = sql.createPool(config);

async function allProduct() {
    return new Promise((resolve, reject) => {
        pool.query('SELECT * FROM mobil.getbrand;', (error, elements) => {
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
        let whereQuery = "SELECT base.name, base.price, brand.brand_name, base.img FROM base JOIN brand ON base.brand = brand.brand_id WHERE ";
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
        pool.query('SELECT mobil.users.user_name FROM mobil.users WHERE mobil.users.user_email = ? AND mobil.users.user_pass = SHA2(?, 256);',[email, pass],(error, results) => {
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
        pool.query('SELECT * FROM mobil.users WHERE mobil.users.user_email = ?',[email],(error, results) => {
                if (error) {
                    reject(error);
                } else {
                    resolve(results);
                }
            }
        );
    });
}


module.exports ={
    allProduct,
    selectProductPerPage,
    select_search_data,
    select_user,
    get_user_profil
}