import React, { useEffect, useState } from 'react';
import { useLocation } from 'react-router-dom';
import Service from '../../service/Service';
import { Col, Row, Container } from 'react-bootstrap';
import Searc_bar from '../search_bar/search';
import Cards from '../products/card';

const Result = () => {
    const location = useLocation();
    const queryParams = new URLSearchParams(location.search);
    const szures = {};
    const [senddata, setData] = useState([]);
    const [loading, setLoading] = useState(true);

    queryParams.forEach((value, key)=>{
        szures[key]=value;
    })

    useEffect(()=>{
        Service.postSearch(szures)
        .then(res => {
            setData(res.data);
            setLoading(false);
        })
        .catch(error => {
            console.log(error);
            setLoading(false);
        })
    }, [])

    return (
        <>
<Container className='search_bar_holder'>
    <Row>
        <Col>
            <Searc_bar/>
        </Col>
    </Row>
        </Container>
        {senddata.length > 0 ? (
            <Container className='Product_all_list'>
                <Row xs={1} md={2} lg={3} xl={4}>
                    <Cards data={senddata} />
                </Row>
            </Container>
        ) : loading ? (
            <Container className='Product_all_list'>
                <Row>
                    <Col>
                        <h2>Adatok betöltése...</h2>
                    </Col>
                </Row>
            </Container>
        ) : (
          <div className='text-center py-5'>
            <h2>Nincs ilyen termék.</h2>
          </div>
        )}
        </>
    );    
};

export default Result;
