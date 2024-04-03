import React, { useState, useEffect } from 'react';
import { Button } from 'react-bootstrap';
import Services from '../../service/productService';
import { useNavigate } from 'react-router-dom';
import http from '../../service/http-common';
import { setAuthHeader } from '../Reg_Log/profile';


export default function Cart({ userId,loggedIn , set_cart}) {
  const [cart, setCart] = useState([]);
  const [postcode, setPostcode] = useState('');
  const [city, setCity] = useState('');
  const [street, setStreet] = useState('');
  const [msg, setMsg] = useState('');
  const [baseAddres, setBaseAddres] = useState('');

  const [orderAddres, setOrderAdres] = useState(1);

  const navigate = useNavigate('');
  useEffect(() => {
    setAuthHeader();
    http.get('/auth/userprofile')
      .then(response => {
        setPostcode(response.data[0].postcode)
        setCity(response.data[0].city)
        setStreet(response.data[0].street)
        console.log(postcode)
        setBaseAddres(postcode + " "+ city + " " + street);
        console.log(baseAddres)
      })
      .catch(error => {
        if (error.response) {
          setMsg('Hiba: ' + error.response.status + ' ' + error.response.data.message);
        }
        else
          setMsg(error.message)
        console.log('ERROR:', error);
      });
  }, [loggedIn,[]]);
  
  useEffect(() => {
    const stored_cart = JSON.parse(sessionStorage.getItem('cart'));
    if (stored_cart) {
      setCart(stored_cart);
    }
  }, []);

  const handle_quantity = (index, newQuantity) => {
    const updated_cart = [...cart];
    updated_cart[index].quantity = newQuantity;
    setCart(updated_cart);
    sessionStorage.setItem('cart', JSON.stringify(updated_cart));
  };

  const handleRemoveItem = (index) => {
    const updated_cart = [...cart];
    updated_cart.splice(index, 1);
    setCart(updated_cart);
    sessionStorage.setItem('cart', JSON.stringify(updated_cart));
  };

  const rendel = async () => {
    let orderData = {};
    try {
      if(orderAddres === 1){
        orderData = {
          "phone" : cart,
          "addres" : postcode + " "+ city + " " + street,
          "user_id": userId,
         }
      }
      
      else if(orderAddres === 2){
        orderData = {
          "phone" : cart,
          "addres" : baseAddres,
          "user_id": userId,
         }
      }
      else{
        return("hiba");
      }
        console.log(orderData);
        const response = await Services.final_order(orderData);
        alert('Sikeres rendelés')
        setCart('');
        sessionStorage.removeItem('cart')
    } catch (error) {
        console.error(error);
    }
};


  return (
    <>
      {loggedIn==true ? (
        cart.length > 0 ? (
          <>
            <p>{msg}</p>
            <table>
              <thead>
                <tr>
                  <th>Termék név</th>
                  <th>Termék ára</th>
                  <th>Darabszám</th>
                  <th>Remove</th>
                </tr>
              </thead>
              <tbody>
                {cart.map((item, index) => (
                  <tr key={item.products.id}>
                    <td>{item.products && item.products.name}</td>
                    <td>{item.products && item.products.price}</td>
                    <td>
                      <input
                        type='number'
                        value={item.quantity}
                        onChange={(e) => handle_quantity(index, e.target.value)}
                      />
                    </td>
                    <td>
                      <Button onClick={() => handleRemoveItem(index)}>X</Button>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
            <input type='radio' name='location' onClick={() => setOrderAdres(1)}/>

            <input
              type='number'
              placeholder='Írányitószám'
              onChange={(e) => setPostcode(e.target.value)}
            />
            <input
              type='text'
              placeholder='Város'
              onChange={(e) => setCity(e.target.value)}
            />
            <input
              type='text'
              placeholder='Utca, házszám'
              onChange={(e) => setStreet(e.target.value)}
            />
            <input type='radio' name='location' onClick={() => setOrderAdres(2)}/>
            <label>{baseAddres}</label>

            <Button onClick={rendel}>Rendelés</Button>
          </>
        ) : (
          <h1>Üres a kosár</h1>
        )
      ) : (
        <>
          <p>Jelentkezzen be</p>
          <button onClick={() => {navigate('/auth/login')}}>Bejelentkezés</button>
        </>
      )}
    </>
  );
}
