import React, { useState, useEffect } from 'react';
import { Button } from 'react-bootstrap';
import Services from '../../service/productService';
import { useNavigate } from 'react-router-dom';

export default function Cart({ loggedIn , set_cart}) {
  const [cart, setCart] = useState([]);
  const [leaderShipNumber, setLeaderShipNumber] = useState('');
  const [city, setCity] = useState('');
  const [addres, setAddres] = useState('');
  const [msg, setMsg] = useState('');
  const navigate = useNavigate('');
  
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
    if (addres === '' || city === '' || leaderShipNumber === '') {
        setMsg('Nincs megadva szállítási cím!');
        return;
    }

    try {
        let orderData = {
          "phone" : cart,
          "addres" : {
            "leaderShip" : leaderShipNumber,
            "city" : city,
            "addres" : addres
          }
         }
        const response = await Services.final_order(cart);
        console.log(response);
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
            <input
              type='number'
              placeholder='Írányitószám'
              onChange={(e) => setLeaderShipNumber(e.target.value)}
            />
            <input
              type='text'
              placeholder='Város'
              onChange={(e) => setCity(e.target.value)}
            />
            <input
              type='text'
              placeholder='Utca, házszám'
              onChange={(e) => setAddres(e.target.value)}
            />
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
