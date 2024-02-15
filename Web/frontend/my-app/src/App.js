import './App.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import {BrowserRouter as Router, Route, Routes, Outlet, useParams, useNavigate} from "react-router-dom";
import Navbar from "./components/nav/nav-bar";
import Home from "./components/home/home";
import Products from "./components/products/product"

import About from './components/About/about';

import SearchBar from './components/search_bar/search';

import Footer from './components/footer/footer';
// egyéb components
import NoPage from './components/notFound';

function App() {
  return (<>
    <Router>
      <Navbar/>
      <Routes>
        <Route path='/' element={<Outlet/>}>
            <Route index element={<Home/>} />
            <Route path='/products' element={<Products/>} />
            <Route path='/about' element={<About/>}/>
            <Route path='*' element={<NoPage/>}/>
        </Route>
      </Routes>
    </Router>
    <Footer/>
    </>
  );
}

export default App;
