import http from './http-common';

const getAll = () => {
    return http.get('/products');
}

const get = (brand) => {
    return http.get(`/products/${brand}`);
}

const getSearch = (fil) =>{
    return http.post(`/products/search?${fil}`)
}

const Pro_service = {
    getAll,
    get,
    getSearch,
};

export default Pro_service;
