import React from "react";
import AppUrl from "../../../API/AppUrl";

export default function AdminProductItem(props) {
  var stt = props.stt;
  var product = props.product;
  var handleDelete = props.handleDelete;
  var handlePublish = props.handlePublish;
  var myView =
    product.attributes.publishedAt == null ? (
      <input type="range" min="0" max="1" value="0" onClick={handlePublish} name={product.id} style={{width: "40px"}}/>
    ) : (
      <input type="range" min="0" max="1" value="1" onClick={handlePublish} name={product.id} style={{width: "40px"}}/>
    );
  return (
    <tr className="odd">
      <td className="dtr-control sorting_1" tabIndex={0}>
        {stt}
      </td>
      <td>{product.id}</td>
      <td>{product.attributes.productName}</td>
      <td>
        <img
          style={{ width: "50px", height: "50px" }}
          src={
           AppUrl.ImageURL + (product.attributes.image.data ? product.attributes.image.data[0].attributes.url : "")
          }
          alt="hinh sp"
        ></img>
      </td>
      <td>{product.attributes.price}</td>
      <td>{myView}</td>
      {/* <td>{product.attributes.publishedAt}</td> */}
      <td style={{ fontSize: "1.5em" }}>
        <i className="icon-eye-open"></i>
        <i className="icon-edit"> </i>
        <i name={product.id} className="icon-trash" onClick={handleDelete} style={{cursor: "pointer"}}></i>
      </td>
    </tr>
  );
}
