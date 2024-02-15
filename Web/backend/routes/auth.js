var express = require("express");
var router = express.Router();
var DB = require("../db/dboperations")
var jwt = require("jsonwebtoken");
var authconf = require("../db/authconfig")
var authjwt = require("../middleware/authjwt");

router.post('/login', function(req, res,next){
    DB.select_user(req.body.email, req.body.password)
    .then(data => data[0])
    .then(data => {
        const packet = {"email": data.email, "role": data.role}
        const token = jwt.sign(packet, authconf.secret, {expiresIn: "1800s"});
        res.status(200).json(
            {
                data: data,
                token: token
            }
        )
    }) 
    .catch(error => res.status(404).send(error));
});


router.get('/userprofile', [authjwt.verifyToken],(req,res) =>{
    DB.get_user_profil(req.userParams.email) //Ez tartalmazza a token adatait
    .then(data => res.json(data))
    .catch( error => res.send(error))
});

module.exports = router;