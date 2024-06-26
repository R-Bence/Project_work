var express = require("express");
var router = express.Router();
var DB = require("../db/dboperations")
var jwt = require("jsonwebtoken");
var authconf = require("../db/authconfig")
var authjwt = require("../middleware/authjwt");


//Login
router.post('/login', function(req, res,next){
    DB.select_user(req.body.email, req.body.password)
    .then(data => data[0])
    .then(data => {
        const packet = {"email": data.user_email}
        const token = jwt.sign(packet, authconf.secret, {expiresIn: "3600s"});
        req.email = data.email;
        res.status(200).json(
            {
                data: data,
                token: token
            }
        )
    }) 
    .catch(error => res.status(404).send(error));
});

//profil lekérés
router.get('/userprofile', [authjwt.verifyToken],(req,res) =>{
    DB.get_user_profil(req.userParams.email) //Ez tartalmazza a token adatait
    .then(data => res.json(data))
    .catch( error => res.send(error))
});

//Registráció
router.post('/registration', (req,res)=>{
    DB.reg_new_user(req.body)
    .then(data => res.send("Sikeres regisztráció"))
    .catch(error => res.send(error))
})

//Profile módosítás
router.patch('/update', (req,res)=>{
    console.log(req.body)
    DB.update_user_prof(req.body)
    .then(
        adat => {
          if(adat.affectedRows == 0){
            res.status(404);
          }
          else{
            res.json(adat);
          }
        }
    )   
    .catch(error => res.send(error));
})

//Rendelés lekérés
router.post('/orders', (req,res) =>{
    DB.getOrders(req.body.user_id)
    .then(
        adat => {
            if(adat.affectedRows == 0){
                res.status(404);
            }
            else{
                res.json(adat);
            }
        }
    )
    .catch(error => res.send(error));
})

//Fiók törlése
router.delete('/delete/:userId', (req,res)=>{
    DB.deleteAccount(req.params.userId)
    .then(data => res.send(data))
    .catch( error => res.send(error))
})

module.exports = router;