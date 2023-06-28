import React from "react";
import { Link } from "react-router-dom";
import currency from "currency.js";
import AppUrl from "../API/AppUrl";
import { useDispatch } from "react-redux";
import { addToCart } from "../state/cartSlice";

export default function Product(props) {
  var product = props.product;
  const dispatch = useDispatch();
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
        <label className="mb-2" style={{ height: "30px" }}>
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
        <h4>
          <Link
            to="#st"
            className="shopBtn btn btn-success"
            title="Thêm vào giỏ hàng"
            onClick={() =>
              dispatch(addToCart({ item: { ...product, count: 1 } }))
            }
          >
            {" "}
            Thêm vào giỏ hàng
          </Link>
        </h4>
        <div className="actionList d-flex">
          <a className="btn" href="#st" style={{ padding: "2px" }}>
            Thêm vào yêu thích{" "}
          </a>
          <a className="btn" href="#st" style={{ padding: "2px" }}>
            {" "}
            Thêm vào so sánh{" "}
          </a>
        </div>
      </div>
    </div>
  );
}
