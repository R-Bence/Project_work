import React from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import './r_log.scss';
import http from '../../service/http-common';
import { useEffect, useState } from 'react';


export default function Login_side({loggedIn,set_loggedIn}){
    const [user_email, set_user_email] = useState('');
    const [user_pass, set_user_pass] = useState('');
    const [msg, set_msg] = useState('');
    
    const handleLogin=() =>{
        http.post('/auth/login', {user_email, user_pass})
        .then(data =>{
            if(data.Status==200){
                console.log(data);
                const token = data.data.token;
                const userData = data.data.data;
                set_msg(userData+ "-----"+ token);
                set_loggedIn(true);

                set_msg('');
                localStorage.setItem('token', token);
                sessionStorage.setItem('login',loggedIn)
            }
            else{
                set_msg('Hibás bejelentkezés!');
            }
        })
        .catch(error =>{
            set_loggedIn(false);
            set_msg('Hibás email vagy jelszó!');
            console.log(error);
        })
    }


    return(
        <div className='container'>
            <div>{msg}</div>
            <div>
                <input type='text' onChange={(e)=> set_user_email(e)}/>
            </div>
            <div>
                <input type='text' onChange={(e)=> set_user_pass(e)}/>
            </div>
            <button onClick={handleLogin}>Login</button>
        </div>
    )
}