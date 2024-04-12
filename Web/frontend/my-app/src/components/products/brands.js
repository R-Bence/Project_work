import React from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';
import Service from '../../service/Service';
import { useEffect, useState } from 'react';
import { Card, Col, Row, Container } from 'react-bootstrap';
import Cards from './card';
import { useNavigate } from 'react-router-dom';

export default function Brands() {
  const [data, setData] = useState('');
  const [msg, setmsg] = useState('');
  const navigate = useNavigate('');

  useEffect(() => {
    frissit();
  }, []);

  const frissit = async () => {
    try {
      const response = await Service.get_brand();
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
      <Card.Body className='text-center pt-5'>
        <Card.Title className="skeleton-text"></Card.Title>
      </Card.Body>
    </Card>
  );

  const click_brand = (brand) => {
    navigate(`/products/search?brand=${brand}`);
  };

  return (
    <>
      <Container className='search_bar_holder'>
        <Row>
          <Col>
            <h1 className='msg'>{msg}</h1>
          </Col>
        </Row>
      </Container>
      <Container className='Product_all_list'>
        <Row xs={1} md={2} lg={3} xl={4}>
          {data.length > 0 ? (
            data.map((item) => (
              <Col key={item.brand_id}>
                <Card onClick={() => click_brand(item.brand_name)}>
                  {item.brand_name ? (
                    <>
                      <Card.Img
                        variant='top'
                        src='https://imgs.search.brave.com/wkrhoSgpP_ZSyCKnGSn2nyMTlMZCvjEd4Phq8xuv6zs/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jZG4u/bW9zLmNtcy5mdXR1/cmVjZG4ubmV0LzZi/VEY2QzJRaVdYdmhp/MzNmSmkzQUMtMzIw/LTgwLmpwZw'
                        alt={item.brand_name}
                        className='card-img-custom'
                      />
                      <Card.Body className='text-center pt-5'>
                        <Card.Title>{item.brand_name}</Card.Title>
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
