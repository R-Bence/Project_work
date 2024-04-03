    import React from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import './r_log.scss';
import http from '../../service/productService';
import { useEffect, useState } from 'react';
import { Navigate, useNavigate } from 'react-router-dom';

export default function Regist_form(){
    const navigate = useNavigate('');
    const [name, set_name] = useState('');
    const [email, set_email] = useState('');
    const [pass, set_pass] = useState('');
    const [pass2, set_pass2] = useState('');
    const [number, set_number] = useState('');
    const [postcode, setPostcode] = useState('');
    const [city, setCity] = useState('');
    const [street, setStreet] = useState('');
    const [msg, set_msg] = useState('');

    const regist = () => {
        if(pass != pass2){
            set_msg("Nem egyezik meg a két jelszó");
            return;
        }
        const data = {
            "name" : name,
            "email" : email,
            "pass" : pass,
            "number" : number,
            "postcode": postcode,
            "city": city,
            "street": street
            }
            console.log(data)
            http.regist(data)
            .then(res => handle_login())
            .catch(error => console.log(error))} 


    const handle_login = () =>{
        navigate('/auth/login');
    }
    return(
        <div className='text-center'>
            <h1>Regisztráció</h1>
            <p>{msg}</p>
            <div>
                <p>Felhasználó név: <input type='text' placeholder='Például: Béla123' onChange={(e) => set_name(e.target.value)}/></p>
                <p>Email: <input type='text' placeholder='bela123@gmail.hu' onChange={(e) => set_email(e.target.value)}/></p>
                <p>Jelszó: <input type='password' placeholder='Jelszó' onChange={(e) => set_pass(e.target.value)}/></p>
                <p>Jelszó: <input type='password' placeholder='Jelszó' onChange={(e) => set_pass2(e.target.value)}/></p>
                <p>Telefonszám: <input type='tel' placeholder='+36201234567' onChange={(e) => set_number(e.target.value)}/></p>
                <p>Írányító szám: <input type='number' placeholder='1016' onChange={(e) => setPostcode(e.target.value)}/></p>
                <p>Város: <input type='text' placeholder='Budapest' onChange={(e)=> setCity(e.target.value)}/></p>
                <p>Utca, házszám: <input type='text' placeholder='Aladár utca 10' onChange={(e)=> setStreet(e.target.value)}/></p>
                <button onClick={regist}>Regisztrálok</button>
                <button onClick={handle_login}>Belépek</button>
            </div>
        </div>
    )
}