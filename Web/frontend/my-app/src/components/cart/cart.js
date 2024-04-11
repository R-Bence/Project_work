import React, { useState, useEffect } from 'react';
import { Button } from 'react-bootstrap';
import Services from '../../service/productService';
import { useNavigate } from 'react-router-dom';
import http from '../../service/http-common';
import { setAuthHeader } from '../Reg_Log/profile';
import './order.scss';

export default function Cart({ userId,setUserId, loggedIn, set_cart }) {
  const [cart, setCart] = useState([]);
  const [postcode, setPostcode] = useState('');
  const [city, setCity] = useState('');
  const [street, setStreet] = useState('');
  const [msg, setMsg] = useState('');
  const [baseAddres, setBaseAddres] = useState('');
  const [orderAddres, setOrderAdres] = useState(1);
  const navigate = useNavigate('');

  //Kártya adatok
  const [CardName, setCardName] = useState("");
  const [CardNumber, setCardNumber] = useState("");
  const [CV, setCV] = useState("");
  const [exYear, setExYear] = useState("");
  const [exMon, setExMon] = useState("")

  useEffect(() => {
    setAuthHeader();
    http.get('/auth/userprofile')
      .then(response => {
        setUserId(response.data[0].user_id)
        setPostcode(response.data[0].postcode)
        setCity(response.data[0].city)
        setStreet(response.data[0].street)
        setBaseAddres(response.data[0].postcode + " " + response.data[0].city + " " + response.data[0].street);
      })
      .catch(error => {
        if (error.response) {
          setMsg('Hiba: ' + error.response.status + ' ' + error.response.data.message);
        } else {
          setMsg(error.message)
        }
        console.log('ERROR:', error);
      });
  }, [loggedIn]);

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

  const calculateTotalPrice = () => {
    let totalPrice = cart.reduce((accumulator, item) => accumulator + item.products.price * item.quantity,0);
    totalPrice += 1500;
    return totalPrice;
  };

  const rendel = async () => {
    let orderData = {};
    try {
      const address = orderAddres === 1 ? `${postcode} ${city} ${street}` : baseAddres;
      orderData = {
        phone: cart,
        address: address,
        user_id: userId,
      };
      console.log(orderData)
      const response = await Services.final_order(orderData);
      if(response.data !== "Nincs elég termék raktáron a rendelés leadásához"){
        setCart([]);
        sessionStorage.removeItem('cart');
      }
      else{
        setMsg(response.data);
      }
    } catch (error) {
      console.error(error);
    }
  };

  return (
    <>
      {loggedIn ? (
        cart.length > 0 ? (
          <>
            <p className='text-center pt-5' style={{"font-size":"20px"}}>{msg}</p>
            <div className='container'>
              <div className='row'>
                <div className='col-lg-6 pr-0 '>
                  <div className='table-responsive'>
                    <table className="table">
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
                            <td>{item.products && item.products.price} Ft</td>
                            <td>
                              <input
                                type='number'
                                value={item.quantity}
                                onChange={(e) => {
                                  handle_quantity(index, e.target.value)
                                  if(e.target.value <= 0 && e.target.value !== "") handleRemoveItem(index);
                                }}
                                className='form-control'
                              />
                            </td>
                            <td>
                              <Button onClick={() => handleRemoveItem(index)}>X</Button>
                            </td>
                          </tr>
                        ))}
                      </tbody>
                    </table>
                  </div>
                </div>
                <div className='col-lg-6 pr-0'>
                  <div className='d-flex py-2'>
                    <input type='radio' name='location' onClick={() => setOrderAdres(1)} />
                    <input
                      type='number'
                      placeholder='Írányitószám'
                      onChange={(e) => setPostcode(e.target.value)}
                      className='form-control mx-2'
                    />
                    <input
                      type='text'
                      placeholder='Város'
                      onChange={(e) => setCity(e.target.value)}
                      className='form-control mx-2'
                    />
                    <input
                      type='text'
                      placeholder='Utca, házszám'
                      onChange={(e) => setStreet(e.target.value)}
                      className='form-control mx-2'
                    />
                  </div>
                  {baseAddres !=="null null null" ? 
                  <div className='py-2'>
                    <input type='radio' name='location' onClick={() => setOrderAdres(2)} />
                    <label className='px-2' style={{"font-size": "18px"}}>{baseAddres}</label>
                  </div> 
                  : "Nincs megadva alap cím"
                  }
                  <div className='d-grid'>
                  <label>Kártyaszám</label>
                    <input type='number' onChange={(e)=>setCardNumber(e.target.value)}/>
                    <label>CV kód</label>
                    <input type='number' onChange={(e)=> setCV(e.target.value)}/>
                    <label>Kártya tulajdonossának neve</label>
                    <input type='text' onChange={(e)=>setCardName(e.target.value)}/>
                    <div className='pt-2'>
                      <label>Lejárati dátum(Hónap/Év)</label>
                      <span className='exDate-span'>
                        <input type='number' className='exDate' max="2" onChange={(e)=>setExMon(e.target.value)}/>/
                        <input type='number' className='exDate' max="2" onChange={(e)=>setExYear(e.target.value)}/>
                      </span>
                    </div>

                  </div>
                  <p className='pt-4'>Szállítás: 1500 Ft</p>
                  <p>Összesen: {calculateTotalPrice()} Ft</p>
                  <Button onClick={rendel}>Rendelés</Button>
                </div>
              </div>
            </div>
          </>
        ) : (
          <div className="d-flex justify-content-center align-items-center" style={{ height: '50vh' }}>
            <div>
              <h1 className='text-center'>Üres a kosár</h1>
              <p className='text-center'>Nézz szét a kínálatunkban! <a style={{ color: '#4E878C' }} href="/products">Kattints ide!</a></p>
              <p>{msg}</p>
            </div>
          </div>
        )
      ) : (
        <>
          {navigate('/auth/login')}
        </>
      )}
    </>
  );
}
