import React, { useState, useEffect } from 'react';
import  http from '../../service/http-common';
import Services from '../../service/productService';
import { Navigate, useNavigate } from 'react-router-dom';
import { Button } from 'react-bootstrap';
import 'bootstrap/dist/css/bootstrap.min.css';

const setAuthHeader = () => {
    const token = localStorage.getItem('token');
    if (http.defaults) {
      if (token) {
        console.log(token)
        http.defaults.headers.common['x-access-token'] = `${token}`;
      } else {
        delete http.defaults.headers.common['x-access-token'];
      }
    }
  };
  
  
  export default function UserProfil(set_user_id) {
    const [islogged, setIslogged] = useState(false);
    const [valasz, setValasz] = useState({});
    const [msg, setMsg] = useState('');
    const navigate = useNavigate('');
  
    const [id , set_id] = useState('');
    const [name, set_name] = useState('');
    const [email, set_email] = useState('');
    const [pass, set_pass] = useState('');
    const [number, set_number] = useState('');
  
    // Adatlekérés a szerverről AXIOS!!
    useEffect(() => {
      //console.log('useEffect');
      setAuthHeader();
      http.get('/auth/userprofile')
        .then(response => {
          setIslogged(true);
          setValasz(response);
          setMsg('Azonosítás OK ');
          set_id(response.data[0].user_id)
        })
        .catch(error => {
          setValasz(error);
          if (error.response) {
            setMsg('Hiba: ' + error.response.status + ' ' + error.response.data.message);
          }
          else
            setMsg(error.message)
          console.log('ERROR:', error);
        });
  
  
    }, []);
   
    const move_login = () => {
        navigate('/auth/login')
    }

    const Logout_handle = () =>{
        localStorage.removeItem('token');
        navigate('/');
    }

    const modify_data = () =>{
      const data = {};
      data.id = id;
      if (name !== '') {
        data.name = name;
      }
      
      if (email !== '') {
        data.email = email;
      }
      
      if (pass !== '') {
        data.pass = pass;
      }
      
      if (number !== '') {
        data.number = number;
      }
      window.location.reload();

      Services.modify(data);
    }
    return (
      <div className='text-center'>
        {!islogged ?
          (<div >
            <h2>Nincs bejelentkezve</h2>
            <Button onClick={move_login}>Bejelentkezés</Button>
          </div>
          )
          : (
            <>
              <h2>A felhasználó adatai</h2>
              {
                valasz.data.map(user => (
                  <div key={user.user_id}>
                    <div>
                      <p>Felhasználó név: <input type='text' placeholder={user.user_name} onChange={(e) => set_name(e.target.value)}/></p>
                      <p>Email: <input type='text' placeholder={user.user_email} onChange={(e) => set_email(e.target.value)}/></p>
                      <p>Telefonszám: <input type='text' placeholder={user.user_tel} onChange={(e) => set_number(e.target.value)}/></p>
                      <p>Jelszó: <input type='text' placeholder='Jelszó' onChange={(e) => set_pass(e.target.value)}/></p>
                    </div>
                    <button onClick={modify_data}>Modosítások mentése</button>
                  </div>
                ))
              }
            <button onClick={Logout_handle}>Kijelentkezés</button>
            </>
          )
        }
      </div>
  
    )
  
  }