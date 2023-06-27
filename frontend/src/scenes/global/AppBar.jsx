import React from "react";
import { Link } from "react-router-dom";
import currency from "currency.js";
import { useSelector } from "react-redux";

export default function AppBar() {
  var cartItems = useSelector((state) => state.cart.items);
  const totalItems = cartItems.reduce((total, item) => {
    return total + item.count;
  }, 0);
  const total = cartItems.reduce((totalPice, item) => {
    console.log(item);
    return totalPice + item.count * item.attributes?.price;
  }, 0);
  return (
    <div className="navbar navbar-inverse navbar-fixed-top">
      <div className="topNav">
        <div className="container">
          <div className="alignR">
            <div className="pull-left socialNw">
              <a href="#st">
                <span className="icon-twitter" />
              </a>
              <a href="#st">
                <span className="icon-facebook" />
              </a>
              <a href="#st">
                <span className="icon-youtube" />
              </a>
              <a href="#st">
                <span className="icon-tumblr" />
              </a>
            </div>
            <a href="index.html">
              {" "}
              <span className="icon-home" /> Home
            </a>
            <a href="#st">
              <span className="icon-user" /> My Account
            </a>
            <a href="register.html">
              <span className="icon-edit" /> Free Register{" "}
            </a>
            <a href="contact.html">
              <span className="icon-envelope" /> Contact us
            </a>
            <Link to="/cart">
              <span className="icon-shopping-cart" /> {totalItems} Item(s) -
              <span className="badge badge-warning">
                {" "}
                [
                {currency(total, {
                  symbol: "đ",
                  separator: ".",
                  decimal: ",",
                }).format()}
                ]
              </span>
            </Link>
            {/* <a href="cart.html">
                  <span className="icon-shopping-cart" /> 2 Item(s) -
                  <span className="badge badge-warning"> $448.42</span>
                </a> */}
          </div>
        </div>
      </div>
    </div>
  );
}
