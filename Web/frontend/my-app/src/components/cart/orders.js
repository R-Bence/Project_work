import React, { useState, useEffect } from "react";
import userService from '../../service/userService';
import './order.scss';
import 'bootstrap/dist/css/bootstrap.min.css';

export default function Order({showPop, userId, setShowPop}){
    const [data, setData] = useState([]);

    useEffect(() => {
        frissit();
      }, []);
    
    const frissit = async () => {
        try {
            const response = await userService.getOrders(userId);
            console.log(response.data);
            setData(response.data);
        } catch (error) {
            console.log(error.message);
        }
    };

    return (
        showPop ? (        
            <div className='popup'>
                <div className="popup-inner">
                    <button className='pop-close-btn' onClick={() => setShowPop(false)}>X</button>
                    <div className="container">
                      <div className="row">
                          <div className="col-4"><h5>Kép</h5></div>
                          <div className="col-4"><h5>Terméknév , darabszám</h5> </div>
                          <div className="col-4"><h5>Státus</h5></div>
                      </div>
                      {data.length > 0 ? (
                          data.map(order => (
                            <div className="row">
                              <div className="col-4"><img alt={order.name} src=""/></div>
                              <div className="col-4"><p>{order.name} , {order.db} db</p> </div>
                              <div className="col-4"><p>{order.status}</p></div>
                            </div>
                          ))
                      ) : (<p>Nincs aktuális rendelés</p>)}
                    </div>

                </div>
            </div> 
        ) : null
    );
}
