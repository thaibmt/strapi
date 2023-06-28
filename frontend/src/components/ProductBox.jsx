import React from "react";
import Product from "./Product";

export default function ProductBox(props) {
  const products = props.products;
  var myView = products.map((product) => (
    <li
      key={product.id}
      className="span3 p-5 text-center"
      style={{ h: "350px", margin: "5px", border: "1px solid #eee" }}
    >
      <Product product={product} />
    </li>
  ));
  // console.log(products)
  return (
    <div classNameName="well well-small">
      <h3>Cửa hàng </h3>
      <div className="row-fluid">
        <ul className="thumbnails">{myView}</ul>
      </div>
    </div>
  );
}
