import React from "react";
import './footer.scss';
import 'bootstrap/dist/css/bootstrap.min.css';

export default function Footer() {
    return (
        <footer className=" main-footer bg-dark py-5 mt-5 container-fluid text-light text-lg-center">
            <div className="row ps-4">
                <div className="col-lg-4 col-xs-12 contact">
                    <h4>Vedd fel bátran a kapcsolatot!</h4>
                    <p>Fedezze fel a MobilShop mobiltelefon webshopját, ahol prémium minőségű mobiltelefonok várnak.
                    Kiváló ügyfélszolgálatunk és gyors szállítás garantálja a zökkenőmentes vásárlási élményt.</p>
                    <p>Email: mobilteszt@outlook.com</p>
                    <p>Telefonszám: +36 30 413 3523</p>
                </div>
                <div className="col-lg-4 col-xs-12">
                    <h4>MobilShop</h4>
                    <p><a href="">ÁSZF</a></p>
                    <p><a href="">Adatvédelem</a></p>
                </div>
                <div className="col-lg-4 col-xs-12">
                    <h4>Navigáció</h4>
                    <p><a href='/'>Főoldal</a></p>
                    <p><a href='/products'>Termékek</a></p>
                    <p><a href='/brands'>Márkák</a></p>
                    <p><a href='/about'>Rólunk</a></p>
                    <p><a href='/account'>Profil</a></p>
                    <p><a href='/cart'>Kosár</a></p>
                </div>
            </div>
        </footer>
    )
}
