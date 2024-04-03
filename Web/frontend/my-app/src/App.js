import './App.scss';
import 'bootstrap/dist/css/bootstrap.min.css';
import {BrowserRouter as Router, Route, Routes, Outlet, useParams, useNavigate} from "react-router-dom";
import Navbar from "./components/nav/nav-bar";
import Home from "./components/home/home";
import Products from "./components/products/product"

import About from './components/About/about';

//Termékek
import Result from './components/search_bar/result';
import Brands from './components/products/brands'
import Focus_product from './components/products/focus_product';
import Footer from './components/footer/footer';

//Order/Cart
import Cart from './components/cart/cart';
import MyOrder from './components/cart/orders';
//Auth
import Login from './components/Reg_Log/login';
import Profile from './components/Reg_Log/profile';
import Regist_form from './components/Reg_Log/reg';
// egyéb components
import NoPage from './components/notFound';
import { useEffect, useState } from 'react';

function App() {
  const [loggedIn, set_loggedIn] = useState(sessionStorage.getItem('login'));
  const [userId, setUserId] = useState('');
  const [addres, setAddres] = useState('');

  const [cart, set_cart] = useState([]);

  const add_To_cart = (termekek) => {
    const vanilyen = cart.find(item => item.products.base_id === termekek.base_id);
  
    if (vanilyen) {
      const ujKosar = cart.map(item =>
        item.products.base_id === termekek.base_id ? { ...item, quantity: item.quantity + 1 } : item
      );
      set_cart(ujKosar);
    } else {
      set_cart([...cart, { products: termekek, quantity: 1 }]);
    }
    sessionStorage.setItem('cart', JSON.stringify(cart));
  };
 
  return (<>
    <Router>
      <Navbar/>
      <Routes>
        <Route path='/' element={<Outlet/>}>
            <Route index element={<Home/>} />
            <Route path='/products' element={<Products loggedIn={loggedIn} add_To_cart={add_To_cart}/>} />
            <Route path='/about' element={<About/>}/>
            <Route path='/products/search' element={<Result/>}/>
            <Route path='/products/brands' element={<Brands/>}/>
            <Route path='/auth/login' element={<Login loggedIn={loggedIn} setIslogged={set_loggedIn}/>}/>
            <Route path='/auth/profile' element={<Profile loggedIn={loggedIn} setIslogged={set_loggedIn} userId={userId} setUserId={setUserId} addres={addres} setAddres={setAddres}/>}/>
            <Route path='/auth/registration' element={<Regist_form loggedIn={loggedIn} setIslogged={set_loggedIn}/>}/>
            <Route path='/cart' element={<Cart cart={cart} loggedIn={loggedIn} userId={userId} set_cart={set_cart} address={addres}/> }/>
            <Route path='/auth/myorders' element={<MyOrder userId={userId}/>}/>
            <Route path='*' element={<NoPage/>}/>
        </Route>
      </Routes>
    </Router>
    <Footer/>
    </>
  );
}

export default App;
