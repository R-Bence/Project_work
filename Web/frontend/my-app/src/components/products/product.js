import React, { useState, useEffect } from 'react';
import { Card, Col, Row, Container } from 'react-bootstrap';
import 'bootstrap/dist/css/bootstrap.min.css';
import productService from '../../service/productService';
import './product.css';

import Searc_bar from '../search_bar/search';

export default function Termekek() {
  const [data, setData] = useState(productService.getAll());
  const [Filterr, setFilterr] = useState('');
  const [msg, setmsg] = useState('');
  const [formData, setFormData] = useState({  
    name: '',
    ar: '',
    brand_name: '',
    img: ''
  });

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




  const SkeletonLoader = () => (
    <Card className="skeleton-loader">
      <Card.Img className="skeleton-img"></Card.Img>
      <Card.Body>
        <Card.Title className="skeleton-text"></Card.Title>
        <Card.Text className="skeleton-price"></Card.Text>
      </Card.Body>
    </Card>
  );
  

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

          {data.length > 0 ? (
            data.map((telefon) => (
              <Col key={telefon.id}>
                <Card>
                  {telefon.name ? (
                    <>
                      <Card.Img
                        variant="top"
                        src='https://imgs.search.brave.com/P-Pix7kLYl3nEHZ6cdcy5zQxeLxbqhfSA9bvLhdhk1U/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE0/ODM0Nzg1NTA4MDEt/Y2ViYTVmZTUwZThl/P3E9ODAmdz0xMDAw/JmF1dG89Zm9ybWF0/JmZpdD1jcm9wJml4/bGliPXJiLTQuMC4z/Jml4aWQ9TTN3eE1q/QTNmREI4TUh4elpX/RnlZMmg4Tm54OGJX/OWlhV3hsZkdWdWZE/QjhmREI4Zkh3dw'
                        alt={telefon.name}
                        className='card-img-custom'
                      />
                      <Card.Body>
                        <Card.Title>{telefon.name}</Card.Title>
                        <Card.Text>{telefon.ar} Ft</Card.Text>
                      </Card.Body>
                    </>
                  ) : (
                    <SkeletonLoader />
                  )}
                </Card>
              </Col>
            ))
          ) : (
            Array.from({ length: 20 }).map((_, index) => (
              <Col key={index}>
                <SkeletonLoader />
              </Col>
            ))
          )}
        </Row>
      </Container>
    </>
  );
}