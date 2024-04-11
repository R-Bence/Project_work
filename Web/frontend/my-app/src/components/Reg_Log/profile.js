import React, { useState, useEffect } from 'react';
import http from '../../service/http-common';
import Services from '../../service/productService';
import { useNavigate } from 'react-router-dom';
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

export default function UserProfil({userId, setUserId, addres, setAddres, loggedIn}) {
    const [islogged, setIslogged] = useState(false);
    const [showPop, setShowPop] = useState(false);
    const [valasz, setValasz] = useState({});
    const [msg, setMsg] = useState('');
    const navigate = useNavigate();
    const [email, set_email] = useState('');
    const [pass, set_pass] = useState('');
    const [number, set_number] = useState('');
    const [postcode, setPostcode] = useState('');
    const [city, setCity] = useState('');
    const [street, setStreet] = useState('');

    useEffect(() => {
      setAuthHeader();
      http.get('/auth/userprofile')
        .then(response => {
          setIslogged(true);
          setValasz(response.data[0]);
          setUserId(response.data[0].user_id);
          setAddres(`${response.data[0].postcode} ${response.data[0].city} ${response.data[0].street}`);
          console.log(valasz);
        })
        .catch(error => {
          setValasz(error);
          if (error.response) {
            setMsg(`Hiba: ${error.response.status} ${error.response.data.message}`);
          } else {
            setMsg(error.message);
          }
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
      if(Object.keys(data).length === 1 && data.hasOwnProperty('id')){
        setMsg("Nem történt módosítás")
      }
      else{
        Services.modify(data);
        window.location.reload();
      }
    }

    return (
      <div className='text-center'>
        {!loggedIn ?
          (
            navigate('/auth/login')
          )
          : (
            <>
              <p>{msg}</p>
              <h2>A felhasználó adatai</h2>
              <div className='container'>
                <div className='row'>
                  <div className='col-md-8'>
                    {
                      Object.keys(valasz).length > 0 &&
                        <div className='details-container'>
                          <p>Email: <input type='text' placeholder={valasz.user_email} onChange={(e) => set_email(e.target.value)}/></p>
                          <p>Telefonszám: <input type='text' placeholder={valasz.user_tel} onChange={(e) => set_number(e.target.value)}/></p>
                          <p>Jelszó: <input type='text' placeholder='Jelszó' onChange={(e) => set_pass(e.target.value)}/></p>
                          <p>Írányító szám: <input type='text' placeholder={valasz.postcode || "Nincs lakcím megadva"} onChange={(e) => setPostcode(e.target.value)}/></p>
                          <p>Város: <input type='text' placeholder={valasz.city || "Nincs lakcím megadva"} onChange={(e) => setCity(e.target.value)}/></p>
                          <p>Utca, házszám: <input type='text' placeholder={valasz.street || "Nincs lakcím megadva"} onChange={(e) => setStreet(e.target.value)}/></p>
                        </div>
                    }
                  </div>
                  <div className='col-md-4 d-block align-items-center'>
                    <button onClick={() => setShowPop(true)} className="py-2 mb-4 px-5">Rendeléseim</button>
                    <button onClick={modify_data} className="py-2 mb-4 px-3 ">Módosítások mentése</button>
                    <button onClick={Logout_handle} className="py-2 px-5 ">Kijelentkezés</button>


                  </div>

                </div>
              </div>


              {showPop && <MyOrders showPop={showPop} setShowPop={setShowPop} userId={userId}/>}
            </>
          )
        }
      </div>
    )
}
