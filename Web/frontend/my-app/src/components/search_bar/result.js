import React, { useEffect, useState } from 'react';
import { useLocation } from 'react-router-dom';
import Db from '../../service/productService';
import {Col, Row, Container } from 'react-bootstrap';
import Searc_bar from '../search_bar/search';
import Cards from '../products/card';

const Result = () => {
    const location = useLocation();
    const queryParams = new URLSearchParams(location.search);
    const szures = {};
    const [senddata,setData] = useState({});
    const [msg, setmsg] = useState("");
    queryParams.forEach((value, key)=>{
        szures[key]=value;
    })
    useEffect(()=>{
        Db.postSearch(szures)
        .then(res => {
            setData(res.data);
            console.log(senddata)
        })
        .catch(error => {console.log(error); setmsg(error)})
    },[])
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
};

export default Result;