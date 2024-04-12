var express = require('express');
var router = express.Router();
var Db = require('../db/dboperations');

//Összes termék lekérése
router.get('/', (req, res) => {
    Db.allProduct()
        .then(data => res.json(data))
        .catch(error => res.send(error));
});

//infinity scroll
router.get('/page/:pageNo', (req,res)=>{
    let oldal = Number(req.params.pageNo)
    Db.selectProductPerPage(oldal)
    .then(data => res.json(data))
    .catch(error => res.send(error)) 
})

//Legdrágább termék ára
router.get('/max', (req,res) =>{
    Db.GetMaxPrice()
    .then(data => res.json(data))
    .catch(error => res.send(error)) 
})

//Márkák lekérése
router.get('/brands', (req,res) =>{
    Db.all_brand()
    .then(data => {res.json(data)})
    .catch(error => res.send(error))
})

//Termék részletes leírása
router.get('/:id', (req,res) =>{
    console.log(req.params.id)
    Db.all_details(req.params.id)
    .then(data => {res.json(data)})
    .catch(error => res.send(error))
})

//Szürt termék lekérés
router.post('/search', (req, res) => {
    let fil = req.body;
    Db.select_search_data(fil)
        .then(data => {
            if (data.length === 0) { 
                res.status(404).send('Nincs ilyen adat');
            } else {
                console.log('data'+ data);
                res.json(data);
            }
        })
        .catch(error => res.send(error));
});

//Rendelés leadása
router.put('/cart/rendel', (req, res) =>{
    let data = req.body;
    Db.order(data)
    .then(data => res.json(data))
    .catch(error => res.send(error).status(400));
})


module.exports = router;