    import React from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import './r_log.scss';
import http from '../../service/productService';
import { useState } from 'react';
import {  useNavigate } from 'react-router-dom';

export default function Regist_form(){
    const navigate = useNavigate('');
    const [email, setEmail] = useState('');
    const [pass, setPass] = useState('');
    const [pass2, setPass2] = useState('');
    const [number, set_number] = useState('');
    const [postcode, setPostcode] = useState('');
    const [city, setCity] = useState('');
    const [street, setStreet] = useState('');
    const [msg, setMsg] = useState('');

    const regist = () => {
        if(pass != pass2){
            setMsg("Nem egyezik meg a két jelszó!");
            return;
        }
        if(!email || !number || !pass || !pass2){
          setMsg("Minden olyan mezőt ahol csillag van ki kell tölteni!")
          return;
        }
        if(!email.includes('@')){
          setMsg("Helytelen email formátum!")
          return
        }
        const data = {
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
            .catch(error => setMsg(error))} 


    const handle_login = () =>{
        navigate('/auth/login');
    }
    return (
            <div className="container">
              <div className="form-container">
                <h1 className="text-center mb-4">Regisztráció</h1>
                <p className='text-center'>{msg}</p>

                <div className="mb-3">
                  <label className="form-label">*Email:</label>
                  <input type="text" className="form-control" placeholder="bela123@gmail.hu" onChange={(e) => setEmail(e.target.value)} />
                </div>
                <div className="mb-3">
                  <label className="form-label">*Jelszó:</label>
                  <input type="password" className="form-control" placeholder="Jelszó" onChange={(e) => setPass(e.target.value)} />
                </div>
                <div className="mb-3">
                  <label className="form-label">*Jelszó megerősítése:</label>
                  <input type="password" className="form-control" placeholder="Jelszó megerősítése" onChange={(e) => setPass2(e.target.value)} />
                </div>
                <div className="mb-3">
                  <label className="form-label">*Telefonszám:</label>
                  <input type="tel" className="form-control" placeholder="+36201234567" onChange={(e) => set_number(e.target.value)} />
                </div>
                <div className="mb-3">
                  <label className="form-label">Írányító szám:</label>
                  <input type="number" className="form-control" placeholder="1016" onChange={(e) => setPostcode(e.target.value)} />
                </div>
                <div className="mb-3">
                  <label className="form-label">Város:</label>
                  <input type="text" className="form-control" placeholder="Budapest" onChange={(e) => setCity(e.target.value)} />
                </div>
                <div className="mb-3">
                  <label className="form-label">Utca, házszám:</label>
                  <input type="text" className="form-control" placeholder="Aladár utca 10" onChange={(e) => setStreet(e.target.value)} />
                </div>
                <div className="d-grid gap-2">
                  <button className="btn" onClick={regist}>Regisztrálok</button>
                  <button className='btn' onClick={()=> navigate('/auth/login')}>Bejelentkezek</button>
                </div>
              </div>
            </div>
          );
}