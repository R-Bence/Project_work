import http from './http-common';

const getAll = () => {
    return http.get('/products');
}

const get_brand = () => {
    return http.get(`/products/brands`);
}

const getMax = () =>{
    return http.get('/products/max');
}

const postSearch = (fil) =>{
    return http.post(`/products/search`,fil)
}

const regist = (data) =>{
    return http.post(`/auth/registration`,data)
}

const modify = (data) => {
    return http.patch('/auth/update',data);
}

const get_details= (id) =>{
    return http.get(`/products/${id}`)
}

const final_order = (cart) =>{
    return http.put(`/products/cart/rendel`,cart)
}

const deleteMyAccount = (id) =>{
    return http.delete(`/auth/delete/${id}`)
}

const pagination = (page) =>{
    return http.get(`/products/page/${page}`)
}

const getOrders = (id) =>{
    return http.post(`/auth/orders`,{"user_id": id})
}

const Pro_service = {
    getAll,
    get_brand,
    postSearch,
    regist,
    modify,
    get_details,
    final_order,
    getMax,
    deleteMyAccount,
    pagination,
    getOrders
};

export default Pro_service;