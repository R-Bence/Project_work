import React from 'react';
import Button from 'react-bootstrap/Button';
import Card from 'react-bootstrap/Card';
import { Carousel } from 'react-bootstrap';
import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';

//img
import applelogo from '../../img/img/Apple-Logo-Design.webp';
import asuslogo from '../../img/img/asus-logo.webp';
import huaweilogo from '../../img/img/huawei-logo.png';
import sonylogo from '../../img/img/sony-log.png';

import mockup1 from '../../img/img/Mockup1.jpg';
import mockup2 from '../../img/img/Mockup2.jpg';
import mockup3 from '../../img/img/Mockup3.jpg';

//
import "./home.scss"



function DarkVariantExample() {
  return (<>
<section>
    <Carousel>
        <Carousel.Item interval={4000}>   
            <img
            className="d-block w-100"
            src={mockup1}
            alt="First slide"
            />
        </Carousel.Item>
        <Carousel.Item interval={4000}>
            <img
            className="d-block w-100"
            src={mockup2}
            alt="Second slide"
            />
        </Carousel.Item>
        <Carousel.Item interval={4000}>
            <img
            className="d-block w-100"
            src={mockup3}
            alt="Third slide"
            />
        </Carousel.Item>
    </Carousel>
</section>

<section>
    <h1 className='px-5'>Márkák</h1>
    <Container>
        <Row>
            <Col>
                <Card style={{ width: '18rem ', height:'24rem'}}>
                    <Card.Img variant="top" src={asuslogo} className='card-img-custom-brand' />
                        <Card.Body>
                        <Card.Title>Asus</Card.Title>
                        <Card.Text>
                            Tapasztald meg az Asus okoseszközök teljesítményét és stílusát! 
                        </Card.Text>
                        <Button variant="primary">Go somewhere</Button>
                    </Card.Body>
                </Card>
            </Col>
            <Col>
            <Card style={{ width: '18rem', height:'24rem' }}>
                    <Card.Img variant="top" src={huaweilogo} className='card-img-custom-brand' />
                        <Card.Body>
                        <Card.Title>Huawei</Card.Title>
                        <Card.Text>
                            Fedezd fel a Huawei okostelefonok világát, ahol a kifinomult dizájn találkozik a csúcsteljesítménnyel.
                        </Card.Text>
                        <Button variant="primary">Go somewhere</Button>
                    </Card.Body>
                </Card>
            </Col>
            <Col>
            <Card style={{ width: '18rem', height:'24rem' }}>
                    <Card.Img variant="top" src={applelogo} className='card-img-custom-brand'/>
                        <Card.Body>
                        <Card.Title>Apple</Card.Title>
                        <Card.Text>
                        Az Apple termékei a dizájn és funkcionalitás tökéletes egyensúlyát képviselik.
                        Éld át a magas minőségű élményt az iPhone-nal.
                        </Card.Text>
                        <Button variant="primary">Go somewhere</Button>
                    </Card.Body>
                </Card>
            </Col>
            <Col>
            <Card style={{ width: '18rem', height:'24rem' }}>
                    <Card.Img variant="top" src={sonylogo} className='card-img-custom-brand'/>
                        <Card.Body>
                        <Card.Title>Sony</Card.Title>
                        <Card.Text>
                        Éld meg a Sony által kínált szórakoztató világot!
                        Az Xperia okostelefonok nemcsak elegánsak, de erőteljes teljesítményőek.
                        </Card.Text>
                        <Button variant="primary">Go somewhere</Button>
                    </Card.Body>
                </Card>
            </Col>
        </Row>
    </Container>
</section>
    </>);

}

export default DarkVariantExample;
