import React from "react";
import { useSelector } from "react-redux";
import { Link } from "react-router-dom";
import currency from "currency.js";
import AppUrl from "../../API/AppUrl";
import { useDispatch } from "react-redux";
import { addToCart, removeFromCart, increaseCount, decreaseCount, } from "../../state/cartSlice";

export default function CartMenu() {
  const dispatch = useDispatch();

  var cartItems = useSelector((state) => state.cart.items);
  const totalItems = cartItems.reduce((total, item) => {
    return total + item.count;
  }, 0);
  const total = cartItems.reduce((totalPice, item) => {
    console.log(item);
    return totalPice + item.count * item.attributes.price;
  }, 0);
  var myView = cartItems.map((item) => (
    <tr>
      <td>
        <img width={100} src={AppUrl.ImageURL + item.attributes.image.data[0].attributes.url} alt="Thom" />
      </td>
      <td>
        {item.attributes.productName}
      </td>
      <td> - </td>
      <td>
        <span className="shopBtn">
          <span className="icon-ok" />
        </span>{" "}
      </td>
      <td>
        {currency(item.attributes.price, {
          symbol: "đ",
          separator: ".",
          decimal: ",",
        }).format()}
      </td>
      <td>
        <input
          className="span1"
          style={{ maxWidth: 34 }}
          placeholder={1}
          id="appendedInputButtons"
          size={16}
          type="text"
          // defaultValue={item.count}
          Value={item.count}
        />
        <div className="input-append">
          <button className="btn btn-mini" type="button" onClick={() =>
            dispatch(decreaseCount({ id: item.id }))}>
            -
          </button>
          <button className="btn btn-mini" type="button" onClick={() =>
            dispatch(increaseCount({ id: item.id }))}>
            {" "}
            +{" "}
          </button>
          <button className="btn btn-mini btn-danger" type="button"
            onClick={() => dispatch(removeFromCart({ id: item.id }))}>
            <span className="icon-remove" />
          </button>
        </div>
      </td>
      <td>
        {currency(item.attributes.price * item.count, {
          symbol: "đ",
          separator: ".",
          decimal: ",",
        }).format()}
      </td>

    </tr>
  ))

  return (
    <div className="well well-small">
      <h1>
        Check Out
        <small className="pull-right"> 2 Items are in the cart </small>
      </h1>
      <hr className="soften" />
      <table className="table table-bordered table-condensed">
        <thead>
          <tr>
            <th>Hình ảnh</th>
            <th>Sản phẩm</th>
            <th> Ref. </th>
            <th>Avail.</th>
            <th>Đơn giá</th>
            <th>Số lượng </th>
            <th>Tổng</th>
          </tr>
        </thead>
        <tbody>
          {myView}
          <tr>
            <td colSpan={6} className="alignR">
              Tổng sản phẩm:{totalItems}
            </td>
            <td>{currency(total, {
              symbol: "đ",
              separator: ".",
              decimal: ",",
            }).format()}</td>
          </tr>

        </tbody>
      </table>
      <br />




      <table className="table table-bordered">
        <tbody>
          <tr>
            <td>
              <form className="form-inline">
                <label style={{ minWidth: 159 }}> Mã giảm giá: </label>
                <input
                  type="text"
                  className="input-medium"
                  placeholder="CODE"
                />
                <button type="submit" className="shopBtn">
                  {" "}
                  Thêm
                </button>
              </form>
            </td>
          </tr>
        </tbody>
      </table>
      <table className="table table-bordered">
        <tbody>
          <tr>
            <td>ESTIMATE YOUR SHIPPING &amp; TAXES</td>
          </tr>
          <tr>
            <td>
              <form className="form-horizontal">
                <div className="control-group">
                  <label className="span2 control-label" htmlFor="inputEmail">
                    Country
                  </label>
                  <div className="controls">
                    <input type="text" placeholder="Country" />
                  </div>
                </div>
                <div className="control-group">
                  <label
                    className="span2 control-label"
                    htmlFor="inputPassword"
                  >
                    Post Code/ Zipcode
                  </label>
                  <div className="controls">
                    <input type="password" placeholder="Password" />
                  </div>
                </div>
                <div className="control-group">
                  <div className="controls">
                    <button type="submit" className="shopBtn">
                      Click to check the price
                    </button>
                  </div>
                </div>
              </form>
            </td>
          </tr>
        </tbody>
      </table>
      <a href="products.html" className="shopBtn btn-large">
        <span className="icon-arrow-left" /> Continue Shopping{" "}
      </a>
      <a href="login.html" className="shopBtn btn-large pull-right">
        Next <span className="icon-arrow-right" />
      </a>
    </div>


  );
}
