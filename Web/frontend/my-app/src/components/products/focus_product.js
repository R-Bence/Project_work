import { useParams } from 'react-router-dom';
import React, { useState, useEffect } from 'react';
import { Col, Row, Container } from 'react-bootstrap';
import Services from '../../service/productService';
import { useNavigate } from 'react-router-dom';

export default function Focus_product({add_To_cart, loggedIn}) {
  const { id } = useParams();
  const [data, set_data] = useState('');
  const navigate = useNavigate('');

  useEffect(() => {
    frissit();
  }, []);

  const frissit = async () => {
    try {
      const response = await Services.get_details(id);
      console.log(response.data);
      set_data(response.data[0]);
      console.log('A betöltés sikeres');
    } catch (error) {
      console.log(error.message);
    }
  };
  return (
    <>
      <p>{JSON.stringify(data.name)}</p>
      <button onClick={() => {
        if(loggedIn == true) {add_To_cart(data)}
        else {navigate('/auth/login')}
    }}>Rendelés</button>
    </>
  );
}
