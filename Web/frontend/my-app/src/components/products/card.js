// cards.js
import React from 'react';
import { Card, Col } from 'react-bootstrap';
import './product.scss';

export default function Cards({ data }) {
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
        data.length > 0 ? (
            data.map((telefon) => (
                <Col key={telefon.id}>
                    <Card>
                        {telefon.name ? (
                            <>
                                <Card.Img
                                    variant="top"
                                    src={telefon.img}  // Add the image source from telefon.img
                                    alt={telefon.name}
                                    className='card-img-custom'
                                />
                                <Card.Body>
                                    <Card.Title>{telefon.name}</Card.Title>
                                    <Card.Text>{telefon.ar || telefon.price} Ft</Card.Text>
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
        )
    );
}
