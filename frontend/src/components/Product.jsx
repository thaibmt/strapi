import React from "react";
import { Link } from "react-router-dom";
import currency from "currency.js";
import AppUrl from "../API/AppUrl";
import { useDispatch } from "react-redux";
import { addToCart } from "../state/cartSlice";

export default function Product(props) {
  var product = props.product;
  const dispatch = useDispatch();
  console.log(product);
 
  return (
    <div>
      <Link to={"/product/" + product.id}>
        <img
          src={
            AppUrl.ImageURL + (product.attributes.image.data ? product.attributes.image.data[0].attributes.url : "")
          }
          alt="tam"
        />
      </Link>
      <div className="caption cntr">
        <label className="mb-2" style={{height: "30px"}}>
          <Link to={"/product/" + product.id}>
            <p>{product.attributes.productName}</p>
          </Link>
        </label>
        <p>
          <strong>
            {currency(product.attributes.price, {
              symbol: "đ",
              separator: ".",
              decimal: ",",
            }).format()}
          </strong>
        </p>
        {/* <p>{product.attributes.category.data.attributes.categoryName}</p> */}
        <h4>
          <Link
            to="#st"
            className="shopBtn btn btn-success"
            title="Add to cart"
            onClick={() =>
              dispatch(addToCart({ item: { ...product, count: 1 } }))
            }
          >
            {" "}
            Add to cart
          </Link>
        </h4>
        <div className="actionList d-flex">
          <a className="btn" href="#st" style={{padding: "2px"}}>
            Add to Wish List{" "}
          </a>
          <a className="btn" href="#st" style={{padding: "2px"}}>
            {" "}
            Add to Compare{" "}
          </a>
        </div>
      </div>
    </div>
  );
}
/*{AppUrl.ImageURL + product.attributes.image.data[0].attributes.url} <img src="assets/img/a.jpg" alt="">*/
