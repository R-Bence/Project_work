import React, { useEffect, useState } from 'react';
import { Card, Col } from 'react-bootstrap';
import './product.scss';
import { useNavigate, useLocation } from 'react-router-dom';
import queryString from 'query-string'; // Az URL paraméterek kezeléséhez

import Popup from './focus_product';

export default function Cards({ data, loggedIn, add_To_cart }) {
    const navigate = useNavigate('');
    const location = useLocation();
    const [id, set_id] = useState('');

    const [showPopup, setShowPopup] = useState(false);

    const SkeletonLoader = () => (
        <Card className="skeleton-loader">
            <Card.Img className="skeleton-img"></Card.Img>
            <Card.Body>
                <Card.Title className="skeleton-text"></Card.Title>
                <Card.Text className="skeleton-price"></Card.Text>
            </Card.Body>
        </Card>
    );

    useEffect(() => {
        const queryParams = queryString.parse(location.search);
        const productId = queryParams.id;
        
        if (productId) {
            handle_popup(productId)
        }
    }, [location.search]);

    const handle_popup = (id) => {
        set_id(id);
        setShowPopup(true);
        navigate(`/products/?id=${id}`);
        document.body.style.overflow = 'hidden';
    }

    useEffect(() => {
        if(showPopup === true) document.body.style.overflow = 'hidden';
        else document.body.style.overflow = 'auto';
    }, [showPopup])

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
                <Col>
                    <SkeletonLoader />
                </Col>
            )}
            {showPopup && <Popup showPopup={showPopup} setShowPopup={setShowPopup} prod_id={id} loggedIn={loggedIn} add_To_cart={add_To_cart}/>}
        </>
    );
}
