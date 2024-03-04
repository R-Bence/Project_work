import React from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import './r_log.scss';
import http from '../../service/http-common';
import { useEffect, useState } from 'react';
import { Navigate, useNavigate } from 'react-router-dom';

export default function Login_side({loggedIn,setIslogged}){
    const [user_email, set_user_email] = useState('');
    const [user_pass, set_user_pass] = useState('');
    const [msg, set_msg] = useState('');
    const navigate = useNavigate();
    const handleLogin=() =>{
        http.post('/auth/login', {email:user_email, password:user_pass})
        .then(data =>{
            console.log(data);
            if(data.status == 200){
                console.log(user_email, user_pass);
                const token = data.data.token;
                const userData = data.data.data;
                set_msg(userData+ "-----"+ token);
                setIslogged(true);
                set_msg('');

                localStorage.setItem('token', token);
                sessionStorage.setItem('login',loggedIn);
                navigate('/products')
            }
            else{
                set_msg('Hibás bejelentkezés!');
            }
        })
        .catch(error =>{
            set_msg('Hibás email vagy jelszó!');
            console.log(error);
            setIslogged(false);

        })
    }

    const handleReg = () =>{
        navigate('/auth/registration')
    }
    return(
        <div className='container'>
            <div>{msg}</div>
            <div>
                <input type='text' onChange={(e)=> set_user_email(e.target.value)} placeholder='Felhasználó név'/>
            </div>
            <div>
                <input type='password' onChange={(e)=> set_user_pass(e.target.value)} placeholder='Jelszó'/>
            </div>
            <button onClick={handleLogin}>Belépés</button>
            <button onClick={handleReg}>Regisztrálok</button>
        </div>
    )
}