import React, { useState, useEffect } from 'react';
import  http from '../../service/http-common';
import Services from '../../service/productService';
import { Navigate, useNavigate } from 'react-router-dom';
import { Button } from 'react-bootstrap';
import 'bootstrap/dist/css/bootstrap.min.css';
import MyOrders from '../cart/orders';

export const setAuthHeader = () => {
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
  
  
  export default function UserProfil({userId, setUserId, addres, setAddres}) {
    const [islogged, setIslogged] = useState(false);

    const [showPop, setShowPop] = useState(false);

    const [valasz, setValasz] = useState({});
    const [msg, setMsg] = useState('');
    const navigate = useNavigate('');
  
    const [name, set_name] = useState('');
    const [email, set_email] = useState('');
    const [pass, set_pass] = useState('');
    const [number, set_number] = useState('');
    const [postcode, setPostcode] = useState('');
    const [city, setCity] = useState('');
    const [street, setStreet] = useState('');
  
    useEffect(() => {
      http.get('/auth/userprofile')
        .then(response => {
          setIslogged(true);
          setValasz(response);
          setUserId(response.data[0].user_id)
          setAddres(response.data[0].postcode + " " + response.data[0].city + " " + response.data[0].street)
          console.log(addres);
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
        sessionStorage.removeItem('login');
        navigate('/');
        window.location.reload();
    }

    const modify_data = () =>{
      const data = {};
      data.id = userId;
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
      if(postcode !== ''){
        data.postcode = postcode;
      }
      if(city !== ''){
        data.city = city;
      }
      if(street !== ''){
        data.street = street;
      }
      window.location.reload();

      Services.modify(data);
    }
    return (
      <div className='text-center'>
      <h1>{msg}</h1>
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
                      <p>Írányító szám: <input type='text' placeholder={user.postcode || "Nincs lakcím megadva"} onChange={(e) => setPostcode(e.target.value)}/></p>
                      <p>Város: <input type='text' placeholder={user.city || "Nincs lakcím megadva"} onChange={(e) => setCity(e.target.value)}/></p>
                      <p>Utca, házszám: <input type='text' placeholder={user.street || "Nincs lakcím megadva"} onChange={(e) => setStreet(e.target.value)}/></p>
                    </div>
                    <button onClick={modify_data}>Modosítások mentése</button>
                  </div>
                ))
              }
            <button onClick={Logout_handle}>Kijelentkezés</button>
            <button onClick={() => setShowPop(true)}>Rendeléseim</button>
            {showPop && <MyOrders showPop={showPop} setShowPop={setShowPop} userId={userId}/>}
            </>
          )
        }
      </div>
  
    )
  
  }