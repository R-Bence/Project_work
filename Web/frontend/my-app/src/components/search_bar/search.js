import React, { useState } from 'react';
import {useNavigate} from 'react-router-dom';
import './search.css';

const SearchComponent = () =>{
    const [keyword, setkeyword] = useState('');
    const [brand, setbrand] = useState('');
    const [maxprice, setmaxprice] = useState('');
    const navigate = useNavigate();

    const handleSearch = () => {
        if(keyword.length == 0 && brand.length == 0){
            navigate('/products')
        }
        else{
            navigate(`/products/search?keyword=${keyword}&brand=${brand}`);
        }
    };

    return(
        <div className='d-flex'>
            <input
                type='text'
                placeholder='Keresés'
                value={keyword}
                onChange={(e)=> setkeyword(e.target.value)}
            />
            <select onChange={(e)=> setbrand(e.target.value)}>
                <option value="none"></option>
                <option value="apple">Apple</option>
            </select>
            <div className='d-flex'>
                <p>0Ft</p>
                <input type='range' min='0' max='100' onChange={(e)=> setmaxprice(e.target.value)}></input>
                <p>{maxprice}Ft</p>
            </div>
            <button onClick={handleSearch}>Keresés</button>
        </div>
    )
}

export default SearchComponent;