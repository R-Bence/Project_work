import React, { useState, useEffect, useRef } from 'react';
import { Card, Col, Row, Container } from 'react-bootstrap';
import 'bootstrap/dist/css/bootstrap.min.css';
import productService from '../../service/Service';
import Cards from './card';
import './product.scss';
import Searc_bar from '../search_bar/search';

export default function Termekek({ loggedIn, add_To_cart }) {
  const [senddata, setData] = useState([]);
  const [msg, setmsg] = useState('');
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState(null);
  const [page, setPage] = useState(1);

  const fetchData = async () => {
    setIsLoading(true);
    setError(null);

    try {
      const response = await productService.pagination(page);
      console.log('Page:', page, response.data);
      const newData = response.data;

      setData(prevData => [...prevData, ...newData]);
      setPage(prevPage => prevPage + 1);
    } catch (error) {
      setError(error);
    } finally {
      setIsLoading(false);
    }
  };

  useEffect(() => {
    fetchData();
  }, []);

  const handleScroll = () => {
    if (window.innerHeight + document.documentElement.scrollTop <= document.documentElement.offsetHeight-20 || isLoading) {
        return;
    }
    fetchData();
  };

  useEffect(() => {
    window.addEventListener('scroll', handleScroll);
    return () => window.removeEventListener('scroll', handleScroll);
  }, [isLoading]);

  return (
    <>
      <Container>
        <Row>
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
          <Cards data={senddata} loggedIn={loggedIn} add_To_cart={add_To_cart} />
        </Row>
      </Container>
      {isLoading && <p>Loading...</p>}
      {error && <p>Error: {error.message}</p>}
    </>
  );
}
