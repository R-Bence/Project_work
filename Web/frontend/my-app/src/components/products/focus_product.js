import React, { useState, useEffect } from 'react';
import Services from '../../service/productService';
import { useNavigate } from 'react-router-dom';
import './product.scss';

export default function Popup({add_To_cart, loggedIn,showPopup,setShowPopup, prod_id}) {
  const [data, set_data] = useState('');
  const navigate = useNavigate('');
  const [foc_img, set_foc_img] = useState("https://tinyurl.com/tesztkepa")

  useEffect(() => {
    frissit();
  }, []);

  const frissit = async () => {
    try {
      const response = await Services.get_details(prod_id);
      console.log(response.data);
      set_data(response.data[0]);
      console.log('A betöltés sikeres');
    } catch (error) {
      console.log(error.message);
    }
  };
  return (  
  showPopup ? (
  <div className='popup container'>
    <div className='popup-inner row' >
      <button className='pop-close-btn' onClick={() => setShowPopup(false)}>X</button>
      <div className=' col-6'>
        <div className='container img-collection'>
          <div className='row'>
              <img className='phone-img-focus' src={foc_img}/>
          </div>
          <div className='row'>
            <img className='phone-img' onClick={() => set_foc_img("https://imgs.search.brave.com/-73vHHW8OHHlT24AI4SEBrZa-Evd69HnqrUcKjr9t1Y/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/dGhlcGlua25ld3Mu/Y29tL3dwLWNvbnRl/bnQvdXBsb2Fkcy8y/MDE5LzA1L1BlcnNv/bmFsaXR5LXBpY3R1/cmUtdGVzdC0xLmpw/Zz93PTY0MCZoPTQx/NiZjcm9wPTE")} src='https://tinyurl.com/tesztkepa'/>
            <img className='phone-img' onClick={() => set_foc_img("https://tinyurl.com/tesztkepa")} src='https://tinyurl.com/tesztkepa'/>
            <img className='phone-img' onClick={() => set_foc_img("https://tinyurl.com/tesztkepa")} src='https://tinyurl.com/tesztkepa'/>
            <img className='phone-img' onClick={() => set_foc_img("https://tinyurl.com/tesztkepa")} src='https://tinyurl.com/tesztkepa'/>
            <img className='phone-img' onClick={() => set_foc_img("https://tinyurl.com/tesztkepa")} src='https://tinyurl.com/tesztkepa'/>
            <img className='phone-img' onClick={() => set_foc_img("https://tinyurl.com/tesztkepa")} src='https://tinyurl.com/tesztkepa'/>
          </div>
        </div>

      </div>
      <div className='desc col-6'>
        <h3>{data.name}</h3>
        <p>Operációs rendszer: {data.op_syst}</p>
        <p>Márka: {data.brand_name}</p>
        <p>Akkumulátor: {data.capacity} mAh</p>
        <p>Kijelző: {data.screen_size} inch ({data.res_x}x{data.res_y})</p>
        <p>RAM: {data.ram} Gb</p>
        <p>Tárhely: {data.storage} GB</p>
        <p>Hátsó kamera: {data.rear_camera} px</p>
        <p>Első kamera: {data.front_camera} px</p>
        <p>Videókártya: {data.gpu_name}</p>
        <p>Processzor: {data.cpu_name}</p>
        <p>Ár: {data.price} Ft</p>
        <p>{data.Darab} darab van készleten</p>
        <button className='main_btn' onClick={() => {
        if(loggedIn == true) {add_To_cart(data)}
        else {navigate('/auth/login')}
    }}>Rendelés</button>
      </div>
    </div>
  </div>
) : null
  );
}
