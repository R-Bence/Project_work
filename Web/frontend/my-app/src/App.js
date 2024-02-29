import './App.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import {BrowserRouter as Router, Route, Routes, Outlet, useParams, useNavigate} from "react-router-dom";
import Navbar from "./components/nav/nav-bar";
import Home from "./components/home/home";
import Products from "./components/products/product"

import About from './components/About/about';

import SearchBar from './components/search_bar/search';
import Result from './components/search_bar/result';

import Footer from './components/footer/footer';

//Auth
import Login from './components/Reg_Log/login'
// egyéb components
import NoPage from './components/notFound';
import { useEffect, useState } from 'react';
import Termekek from './components/products/product';

function App() {
  /*
  const [loggedIn, set_loggedIn] = useState(false);

  useEffect(()=>{
    if(sessionStorage.getItem('login')==true){
      sessionStorage.removeItem('login');
    }
  })
  
  <Route path='/auth/login' element={<Login/>} isLogged={loggedIn} setIslogged={set_loggedIn}/>
  
  */

  const [cart, set_cart] = useState([]);
/*
  const add_To_cart = (termekek) =>{
    const vanilyen = cart.find(item => item.products.id === termekek.id);

    if(vanilyen){
      const ujKosar = cart.map(item =>{
        item.products.id === termekek.id ? {
          ...item, quantity: item.quantity+1
        } 
        : item
      set_cart(ujKosar);
    })}
     
    else{
      set_cart(...cart, {products:termekek, quantity:1})
    }
    set
  }
*/
  return (<>
    <Router>
      <Navbar/>
      <Routes>
        <Route path='/' element={<Outlet/>}>
            <Route index element={<Home/>} />
            <Route path='/products' element={<Products add_To_cart={add_to_cart}/>} />
            <Route path='/about' element={<About/>}/>
            <Route path='/products/search' element={<Result/>}/>
            <Route path='*' element={<NoPage/>}/>
        </Route>
      </Routes>
    </Router>
    <Footer/>
    </>
  );
}

export default App;
