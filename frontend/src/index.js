import React from "react";
import ReactDOM from "react-dom/client";
import { createBrowserRouter, RouterProvider } from "react-router-dom";
import "./index.css";
import App from "./App";
import reportWebVitals from "./reportWebVitals";
import Admin from "./admin/Admin";
import Home from "./scenes/home/Home";
import Confirmation from "./scenes/checkout/Confirmation";
import ProductList from "./scenes/productList/ProductList";
import ProductDetail from "./scenes/productDetail/ProductDetail";
import CartMenu from "./scenes/global/CartMenu";
import Checkout from "./scenes/checkout/Checkout";
import Dashboard from "./admin/scenes/Dashboard";
import AdminProduct from "./admin/scenes/product/AdminProduct";
import AdminProductAdd from "./admin/scenes/product/AdminProductAdd";
import AdminProductBox from "./admin/scenes/product/AdminProductBox";
import AdminProductDetail from "./admin/scenes/product/AdminProductDetail";
import AdminProductEdit from "./admin/scenes/product/AdminProductEdit";

const root = ReactDOM.createRoot(document.getElementById("root"));
const router = createBrowserRouter([
  {
    path: "/",
    element: <App />,
    children: [
      {
        index: true,
        element: <Home />,
      },
      {
        path: "product",
        element: <ProductList />,
      },
      {
        path: "product/page/:pageNum",
        element: <ProductList />,
      },
      {
        path: "product/:id",
        element: <ProductDetail />,
      },
      {
        path: "checkout",
        element: <Checkout />,
      },
      {
        path: "checkout/success",
        element: <Confirmation />,
      },
      {
        path: "cart",
        element: <CartMenu />,
      },
    ],
  },
  {
    path: '/admin',
    element: <Admin />,
    children: [
      {
        index: true,
        element: <Dashboard />
      },
      {
        path: '/admin/product',
        element: <AdminProduct />,
        children: [
          {
            index: true,
            element: <AdminProductBox />
          },
          {
            path: '/admin/product/page/:pageNum',
            element: <AdminProductBox />
          },
          {
            path: '/admin/product/:id',
            element: <AdminProductDetail />
          },
          {
            path: '/admin/product/add',
            element: <AdminProductAdd />
          },
          {
            path: '/admin/product/edit/:id',
            element: <AdminProductEdit />
          },
        ]
      }
    ]
  },
]);
root.render(
  <React.StrictMode>
    <RouterProvider router={router}></RouterProvider>
  </React.StrictMode>
);
if (module.hot) {
  module.hot.accept();
}
// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
// document.querySelector('button').onClick = function() {
//   const image = document.getElementById('container');
//   image.style.width = '450px';
//   image.style.height = 'auto';
// }
