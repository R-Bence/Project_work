const jwt = require('jsonwebtoken');
const config = require('../db/authconfig');

const verifyToken = (req, res, next) => {
    let token = req.headers["x-access-token"];

    if (!token) {
        return res.status(401).send({ message: "Nincs token megadva" });
    } else {
        jwt.verify(token, config.secret, (err, decoded) => {
            if (err) {
                return res.status(401).send({ message: "Nincs ilyen felhasználó!" });
            }
            req.userParams = decoded;
            req.iatDate = { [`Kiadva: `]: new Date(1000 * req.userParams.iat).toLocaleString() };
            req.expDate = { [`Érvényes: `]: new Date(1000 * req.userParams.exp).toLocaleString() };
            next();
        });
    }
};

const verifyAdmin = (req, res, next) => {
    let token = req.headers["x-access-token"];
    if (!token) {
        return res.status(401).send({ message: "Nincs token megadva" });
    } else {
        jwt.verify(token, config.secret, (err, decoded) => {
            if (err) {
                return res.status(401).send({ message: "Nincs ilyen felhasználó!" });
            }
            req.userParams = decoded;
            if (req.userParams.data.role === 9) {
                next();
            } else {
                return res.status(401).send({ message: "Nincs jogosultság" });
            }
        });
    }
};

const authJwt = {
    verifyToken: verifyToken,
    verifyAdmin: verifyAdmin
};

module.exports = authJwt;
