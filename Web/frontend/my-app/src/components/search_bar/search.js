import React, { useState, useEffect } from 'react';
import { useNavigate , useLocation } from 'react-router-dom';
import queryString from 'query-string';
import Service from '../../service/productService';
import './search.scss';

const SearchComponent = () => {
    const [keyword, setKeyword] = useState('');
    const [brand, setBrand] = useState('');
    const [maxprice, setMaxPrice] = useState('');
    const [data, set_data] = useState([]);
    const navigate = useNavigate();
    const location = useLocation();

    useEffect(() => {
        frissit();
        const queryParams = queryString.parse(location.search);
        setKeyword(queryParams.keyword || '');
        setBrand(queryParams.brand || '');
        setMaxPrice(queryParams.max || '');
    }, [location.search]);

    const frissit = async () => {
        try {
            const response = await Service.get_brand();
            set_data(response.data);
            console.log('A betöltés sikeres');
        } catch (error) {
            console.log(error.message);
        }
    };

    const handleSearch = () => {
        let fil = {};
        if (keyword !== "") { fil[`keyword`] = keyword }
        if (brand !== "") { fil[`brand`] = brand }
        if (maxprice !== "") { fil[`max`] = maxprice }
        if (keyword === "" && brand === "" && maxprice === "") {
            navigate('/products');
        } else {
            const search_query = queryString.stringify(fil);
            navigate(`/products/search?${search_query}`);
            window.location.reload();
        }
    };

    const handleSearch_del = () => {
        navigate('/products');
    };

    return (
        <div className='d-flex container-fluid text-center pt-4 mt-3 justify-content-center search_container'>
            <div className='row' xs={1}>
                <div className='col-4'>
                    <input
                        type='text'
                        placeholder='Keresés'   
                        value={keyword}
                        onChange={(e) => setKeyword(e.target.value)}
                        className='mx-4 px-3'
                    />
                </div>
                <div className='col-4'>
                    <select className='px-3' value={brand} onChange={(e) => setBrand(e.target.value)}>
                        <option value=''></option>
                        {data.map((item) => (
                            <option key={item.brand_name} value={item.brand_name}>
                                {item.brand_name}
                            </option>
                        ))}
                    </select>
                </div>

                <div className='d-flex justify-content-center col-4'>
                    <p className='mr-2 price'>0Ft</p>
                    <input className='mx-2'
                        type='range' 
                        min='0' 
                        max='100000' 
                        step='1' 
                        value={maxprice}
                        onChange={(e) => {
                            if (e.target.value === '0') {
                                setMaxPrice('');
                            } else {
                                setMaxPrice(e.target.value);
                            }
                        }}
                    />
                    <p className='ml-2 price'>{maxprice + ' Ft'}</p>
                </div>


                <div className='col-11'>
                    <button className='mx-4 px-3 fill_delete' onClick={handleSearch_del}>Szűrés törlése</button>
                    <button className='px-3 search_btn' onClick={handleSearch}>Keresés</button>
                </div>

            </div>
            
        </div>
    );
}

export default SearchComponent;
