import http from './http-common';

const getOrders = (id) =>{
    return http.post(`/auth/orders`,{"user_id": id})
}


const user_service = {
    getOrders,
}

export default user_service;