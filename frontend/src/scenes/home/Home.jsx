import React from "react";
import MainCarousel from "./MainCarousel";
import ProductList from "../productList/ProductList";
export default function Home() {
  return (
    <div>
      <MainCarousel />
      <ProductList />
    </div>
  );
}
