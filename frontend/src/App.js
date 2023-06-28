// import logo from './logo.svg';
// import './App.css';

// function App() {
//   return (
//     <div className="App">
//       <header className="App-header">
//         <img src={logo} className="App-logo" alt="logo" />
//         <p>
//           Edit <code>src/App.js</code> and save to reload.
//         </p>
//         <a
//           className="App-link"
//           href="https://reactjs.org"
//           target="_blank"
//           rel="noopener noreferrer"
//         >
//           Learn React
//         </a>
//       </header>
//     </div>
//   );
// }

import React from "react";
// import Picture from "./example/picture/Picture";
import AppBar from "./scenes/global/AppBar";
import Banner from "./scenes/global/Banner";
import NavBar from "./scenes/global/NavBar";
import Footer from "./scenes/global/Footer";
import Coppyright from "./scenes/global/Coppyright";
import { Outlet } from "react-router-dom";
import { Provider } from "react-redux";
import store from "./state/store";

export default function App() {
  //   useEffect(()=>{
  //     const fetchData = async () =>{
  //       var response1=await categoryApi.getAll();
  //       var response2=await productApi.getAll();
  //       console.log(response2);

  //     }
  //     fetchData()
  // },[])

  return (
    <div>
      <Provider store={store}>
        <AppBar />
        <div className="container">
          <Banner />
          <NavBar />

          <Outlet />
          <Footer />
        </div>
        <Coppyright />
      </Provider>
    </div>
  );
}
