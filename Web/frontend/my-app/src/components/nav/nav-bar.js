import React from "react";
import { NavLink } from "react-router-dom";
import { Navbar, Nav } from "react-bootstrap";
import 'bootstrap/dist/css/bootstrap.min.css';
import './nav-bar.scss';
//logo
import profilepng from '../../img/icons/user.png';
import cartpng from '../../img/icons/grocery-store.png';
import logo from '../../img/icons/Logo_pic.png';

export default function NavigationBar() {
    return (
        <Navbar expand="lg" className="px-4">
            <Navbar.Brand as={NavLink} to="/" className="brand-link">
                <img src={logo} alt="Brand logo" className="brand-img"></img>
                <h1 style={{ color: "#4E878C" }}>MobileMart</h1>
            </Navbar.Brand>
            <Navbar.Toggle aria-controls="responsive-navbar-nav" />
            <Navbar.Collapse id="responsive-navbar-nav" className="justify-content-end">
                <Nav className="mr-auto">
                    <Nav.Link as={NavLink} to="/products" activeClassName="active-link">Termékek</Nav.Link>
                    <Nav.Link as={NavLink} to="/brands" activeClassName="active-link">Márkák</Nav.Link>
                    <Nav.Link as={NavLink} to="/about" activeClassName="active-link">Rólunk</Nav.Link>
                    <Nav className="icon_container">
                        <Nav.Link as={NavLink} to="/auth/profile"><img src={profilepng} className="icon" alt="Profil" /></Nav.Link>
                        <Nav.Link as={NavLink} to="/cart"><img src={cartpng} className="icon" alt="Kosár" /></Nav.Link>
                    </Nav>

                </Nav>
            </Navbar.Collapse>

        </Navbar>
    );
}

