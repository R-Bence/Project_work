import React, { useState, useEffect } from 'react';
import { Card, Col, Row, Container } from 'react-bootstrap';
import 'bootstrap/dist/css/bootstrap.min.css';
import productService from '../../service/productService';
import Cards from './card';
import './product.scss';

import Searc_bar from '../search_bar/search';

export default function Termekek() {
  const [senddata, setData] = useState(productService.getAll());
  const [msg, setmsg] = useState('');


  useEffect(() => {
    frissit();
  }, []);

  const frissit = async () => {
    try {
      const response = await productService.getAll();
      console.log(response.data);
      setData(response.data);
      console.log('A betöltés sikeres');
    } catch (error) {
      console.log(error.message);
      setmsg(error.message);
    }
  };


  

  return (
    <>
      <Container className='search_bar_holder'>
        <Row xs={1} xl={2}>
          <Col>
          <Searc_bar />
          </Col>
        </Row>
        <Row>
          <Col>
            <h1 className='msg'>{msg}</h1>
          </Col>
        </Row>
      </Container>
      <Container className='Product_all_list'>
        <Row xs={1} md={2} lg={3} xl={4}>
            <Cards data={senddata}/>
        </Row>
      </Container>
    </>
  );
}