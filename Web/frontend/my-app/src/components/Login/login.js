import React,{useState, useEffect} from 'react';


const handleLogin = () =>{
    http.post('/auth/login', {email,password})
    .then(res => {
        if(res.status == 200){
            console.log(res);
            const token = res.data.token;
            const userData = res.data.data;
            setLoggedIn(True);
            setErorr('');
            localStorage.setItem('token',token);
        }
        else{
            setErorr('Hibás bejelentkezési adatok!');
        }
    })
    .catch(error => {
        setLoggedIn(false);
        setError('Hibás bejelentkezési adatok!');
        console.log(error);
    })
}