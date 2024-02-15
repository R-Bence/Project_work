var express = require('express');
var router = express.Router();
var Db = require('../db/dboperations');

router.get('/', (req, res) => {
    Db.allProduct()
        .then(adat => res.json(adat))
        .catch(error => res.send(error));
});

router.get('/page/:pageNo', (req,res)=>{
    let oldal = Number(req.params.pageNo)
})


//Szürt termék lekérés
router.get('/search/:fil', (req, res) => {
    let fil = '%' + req.params.fil + '%';
    console.log(fil);
    Db.select_search_data(fil)
        .then(adat => {
            if (adat.length === 0) { 
                res.status(404).send('Nincs ilyen adat');
            } else {
                console.log(adat.length);
                res.json(adat);
            }
        })
        .catch(error => res.send(error));
});

module.exports = router;