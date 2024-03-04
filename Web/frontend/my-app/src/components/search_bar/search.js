import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import queryString from 'query-string';
import './search.scss';

const SearchComponent = () => {
    const [keyword, setKeyword] = useState('');
    const [brand, setBrand] = useState('');
    const [maxprice, setMaxPrice] = useState('');
    const navigate = useNavigate();

    const handleSearch = () => {
        let fil = {};
        if (keyword !== "") { fil[`keyword`] = keyword }
        if (brand !== "") { fil[`brand`] = brand }
        if (maxprice !== "") { fil[`max`] = maxprice }
        if (keyword === "" && brand === "" && maxprice === "") {
            navigate('/products');
        }
        else{
            const search_query = queryString.stringify(fil);
            navigate(`/products/search?${search_query}`);
            window.location.reload();
        }

    };

    const handleSearch_del = ()=>{
        navigate('/products');
    }

    return (
        <div className='d-flex'>
            <input
                type='text'
                placeholder='Keresés'
                value={keyword}
                onChange={(e) => setKeyword(e.target.value)}
            />
            <select onChange={(e) => setBrand(e.target.value)}>
                <option value=''></option>
                <option value="apple">Apple</option>
            </select>
            <div className='d-flex'>
                <p>0Ft</p>
                <input type='range' min='0' max='100000' step='1' onChange={(e) =>{ 
                    if(e.target.value ==0){
                        setMaxPrice('');
                    }
                    else
                        {
                            setMaxPrice(e.target.value)}
                        }}></input>
                <p>{maxprice + ' Ft'}</p>
            </div>
            <button onClick={handleSearch_del}>Szűrés törlése</button>
            <button onClick={handleSearch}>Keresés</button>
        </div>
    );
}

export default SearchComponent;
