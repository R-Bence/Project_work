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

const Pro_service = {
    getAll,
    get_brand,
    postSearch,
    regist,
    modify,
    get_details,
    final_order,
    getMax
};

export default Pro_service;