import React, { useState, useEffect } from 'react';
import { Button } from 'react-bootstrap';
import Services from '../../service/productService';

export default function Cart() {
  const [cart, setCart] = useState([]);
  const [addres, set_addres] = useState('');
  const [msg, set_msg] = useState('');

  useEffect(() => {
    // Fetch data from sessionStorage
    const storedCart = JSON.parse(sessionStorage.getItem('cart'));
    if (storedCart) {
      setCart(storedCart);
    }
  }, []); // Empty dependency array ensures the effect runs only once on mount

  //AI
  const handle_quantity = (index, newQuantity) => {
    const updatedCart = [...cart];
    updatedCart[index].quantity = newQuantity;
    setCart(updatedCart);
    sessionStorage.setItem('cart', JSON.stringify(updatedCart));
  };

  const rendel = () => {
    if (addres === '') {
      set_msg('Nincs megadva szállítási cím!');
      return;
    }
    Services.final_order(cart);
  };

  return (
    <>
      {cart.length > 0 ? (
        <>
          <p>{msg}</p>
          <table>
            <thead>
              <tr>
                <th>Termék név</th>
                <th>Termék ára</th>
                <th>Darabszám</th>
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
                    <Button>X</Button>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
          <input
            type='text'
            placeholder='Szállítási cím'
            onChange={(e) => set_addres(e.target.value)}
          />
          <Button onClick={() => rendel()}>Rendelés</Button>
        </>
      ) : (
        <h1>Üres a kosár</h1>
      )}
    </>
  );
}