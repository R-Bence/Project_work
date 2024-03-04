import http from './http-common';

const getAll = () => {
    return http.get('/products');
}

const get = (brand) => {
    return http.get(`/products/${brand}`);
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

const Pro_service = {
    getAll,
    get,
    postSearch,
    regist,
    modify
};

export default Pro_service;
