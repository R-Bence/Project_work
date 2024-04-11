// Login.js
import React from 'react';
import http from '../../service/http-common';
import { useNavigate } from 'react-router-dom';
import { useState } from 'react';


export default function Login({ setIslogged }) {
    const [userEmail, setUserEmail] = useState('');
    const [userPass, setUserPass] = useState('');
    const [msg, setMsg] = useState('');
    const navigate = useNavigate();

    const handleLogin = () => {
        http.post('/auth/login', { email: userEmail, password: userPass })
            .then(response => {
                if (response.status === 200 && response.data.token) {
                    setIslogged(true);
                    sessionStorage.setItem('login', 'true');
                    localStorage.setItem('token', response.data.token);
                    navigate('/products');
                } else {
                    setMsg('Hibás bejelentkezés!');
                }
            })
            .catch(error => {
                setMsg('Hibás email vagy jelszó!');
                setIslogged(false);
            });
    };
    

    const handleReg = () => {
        navigate('/auth/registration');
    };

    return (
        <div className='container'>
            <div className='form-container'>
                <h1 className='text-center'>Bejelentkezésk</h1>
                <p className='text-center'>{msg}</p>
                <div className='mb-3'>
                    <label htmlFor='username' className='form-label'>Felhasználó email:</label>
                    <input type='text' className='form-control' id='username' onChange={(e) => setUserEmail(e.target.value)} />
                </div>
                <div className='mb-3'>
                    <label htmlFor='password' className='form-label'>Jelszó:</label>
                    <input type='password' className='form-control' id='password' onChange={(e) => setUserPass(e.target.value)} />
                </div>
                <div className='d-grid gap-2'>
                    <button className='btn' onClick={handleLogin}>Belépés</button>
                    <button className='btn' onClick={handleReg}>Regisztrálok</button>
                </div>
            </div>
        </div>
    );
}
