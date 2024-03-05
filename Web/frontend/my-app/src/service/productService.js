import http from './http-common';

const getAll = () => {
    return http.get('/products');
}

const get_brand = () => {
    return http.get(`/products/brands`);
}

const postSearch = (fil) =>{
    return http.post(`/products/search`,fil)
}

const regist = (data) =>{
    return http.post(`/auth/registration`,data)
}

const modify = (data) => {
    return http.put('/auth/update',data);
}

const get_details= (id) =>{
    return http.get(`/products/${id}`)
}

const final_order = (cart) =>{
    return http.put(`/cart`,cart)
}

const Pro_service = {
    getAll,
    get_brand,
    postSearch,
    regist,
    modify,
    get_details,
    final_order
};

export default Pro_service;
