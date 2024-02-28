import React from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import 'r_log.sccs';

export default function logOut(){
    return(
        <div>
            {localStorage.removeItem('token')}
            <h1>Sikeres kijelentkezés</h1>
        </div>
    )
}