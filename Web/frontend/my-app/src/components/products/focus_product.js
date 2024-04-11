import React, { useState, useEffect } from 'react';
import Services from '../../service/productService';
import { useNavigate } from 'react-router-dom';
import './product.scss';
import { Carousel } from 'react-bootstrap';

export default function Popup({ add_To_cart, loggedIn, showPopup, setShowPopup, prod_id }) {
    const [data, setData] = useState('');
    const navigate = useNavigate('');
    const [msg, setMsg] = useState('');
    const altImages = ["https://tinyurl.com/tesztkepa", "https://tinyurl.com/tesztkepa", "https://imgs.search.brave.com/_eFVmzsFZdGAS_MtbsU6ExP7sglzw7cBBc5pI0NyrTU/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWc0/LmZyZXNoZXJzbGl2/ZS5jb20vY3Jvc3N3/b3JkLzIwMjMvMDIv/Y3Jvc3N3b3JkLWNs/dWUtaG9tZS0xMDc2/MTAwNTIwLTkwMC53/ZWJw"]; // Placeholder alt images
    const [activeIndex, setActiveIndex] = useState(0);

    useEffect(() => {
        frissit();
    }, []);

    const frissit = async () => {
        try {
            const response = await Services.get_details(prod_id);
            console.log(response.data);
            setData(response.data[0]);
            console.log('A betöltés sikeres');
        } catch (error) {
            console.log(error.message);
        }
    };

    const handleAltImageClick = (imageUrl, index) => {
        setActiveIndex(index);
    };

    return (
        showPopup ? (
            <div className='popup'>
                <div className='container'>
                    <div className='popup-inner row'>
                        <button className='pop-close-btn' onClick={() => {
                            setShowPopup(false);
                            navigate('/products');
                            }}>X</button>
                        <div className='col-lg-6 col-md-11'>
                            <div className='container img-collection'>
                                <Carousel activeIndex={activeIndex} onSelect={(index) => setActiveIndex(index)}>
                                    {altImages.map((altImg, index) => (
                                        <Carousel.Item key={index}>
                                            <img
                                                className='d-block w-100 phone-img-focus img-fluid img-thumbnail'
                                                src={altImg}
                                                alt={index}
                                            />
                                        </Carousel.Item>
                                    ))}
                                </Carousel>
                            </div>
                            <div className='row alt-img-collection d-flex'>
                                {altImages.map((altImg, index) => (
                                    <img key={index} className='phone-img img-fluid' onClick={() => handleAltImageClick(altImg, index)} src={altImg} alt={index} />
                                ))}
                            </div>
                        </div>
                        <div className='desc col-lg-6 col-md-12 pt-4'>
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
                            <p className='pt-2' style={{color: "green"}}>{msg}</p>
                            <button className='main-btn' onClick={() => {
                            if (loggedIn) {
                                add_To_cart(data);
                            } else {
                                navigate('/auth/login');
                                setShowPopup(false);
                                document.body.style.overflow = 'auto';
                            }
                            setMsg("Sikeresen hozzáadtad a kosaradhoz!");
                        }}>Rendelés</button>

                        </div>
                    </div>
                </div>
            </div>
        ) : null
    );
}