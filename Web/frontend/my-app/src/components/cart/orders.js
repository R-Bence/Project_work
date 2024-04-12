import React, { useState, useEffect } from "react";
import Service from '../../service/Service';
import './order.scss';
import 'bootstrap/dist/css/bootstrap.min.css';

export default function Order({ showPop, userId, setShowPop }) {
    const [data, setData] = useState([]);

    useEffect(() => {
        frissit();
    }, []);

    const frissit = async () => {
        try {
            const response = await Service.getOrders(userId);
            setData(response.data);
        } catch (error) {
            console.log(error.message);
        }
    };

    return (
        showPop ? (
            <div className='popup d-flex'>
                <div className="popup-inner">
                    <button className='pop-close-btn' onClick={() => setShowPop(false)}>X</button>
                    <div className="table-responsive">
                        <table className="table table-striped">
                            <thead>
                                <tr>
                                    <th>Rendelés id-ja</th>
                                    <th>Terméknév</th>
                                    <th>Darabszám</th>
                                    <th>Státus</th>
                                </tr>
                            </thead>
                            <tbody>
                                {data.length > 0 ? (
                                    data.map(order => (
                                        <tr key={order.order_id}>
                                            <td>{order.order_id}</td>
                                            <td>{order.name}</td>
                                            <td>{order.db} db</td>
                                            <td>{order.status}</td>
                                        </tr>
                                    ))
                                ) : (
                                    <tr>
                                        <td colSpan="4">Nincs aktuális rendelés</td>
                                    </tr>
                                )}
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        ) : null
    );
}
