import React, { useState } from 'react';
import { Card, Col } from 'react-bootstrap';
import './product.scss';
import { useNavigate } from 'react-router-dom';
import Popup from './focus_product';

export default function Cards({ data ,loggedIn, add_To_cart}) {
    const navigate = useNavigate('');
    const [id, set_id] = useState('');
    const [showPopup, setShowPopup] = useState(false); // State to control popup visibility
    const SkeletonLoader = () => (
        <Card className="skeleton-loader">
            <Card.Img className="skeleton-img"></Card.Img>
            <Card.Body>
                <Card.Title className="skeleton-text"></Card.Title>
                <Card.Text className="skeleton-price"></Card.Text>
            </Card.Body>
        </Card>
    );

    const handle_popup = (id) => {
        set_id(id); // Set the ID of the clicked card
        setShowPopup(true); // Show the popup
    }

    return (
        <>
            {data.length > 0 ? (
                data.map((telefon) => (
                    <Col key={telefon.id}>
                        <Card onClick={() => handle_popup(telefon.id)}>
                            {telefon.name ? (
                                <>
                                    <Card.Img
                                        variant="top"
                                        src={"https://tinyurl.com/tesztkepa"}
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
            )}
            {showPopup && <Popup showPopup={showPopup} setShowPopup={setShowPopup} prod_id={id} loggedIn={loggedIn} add_To_cart={add_To_cart}/>}
        </>
    );
}
