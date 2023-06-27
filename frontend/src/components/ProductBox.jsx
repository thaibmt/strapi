import React from "react";
import Product from "./Product";

export default function ProductBox(props) {
  const products = props.products;
  var myView = products.map((product) => (
    <li
      key={product.id}
      className="span3 p-5 text-center"
      style={{ h: "350px", margin: "5px",border: "1px solid #eee" }}
    >
      <Product product={product} />
    </li>
  ));
  // console.log(products)
  return (
    <div classNameName="well well-small">
      <h3>Our Products </h3>
      <div className="row-fluid">
        <ul className="thumbnails">{myView}</ul>
      </div>
      {/* <div classNameName="row-fluid">
    <ul classNameName="thumbnails">
      <li classNameName="span3">
        <div classNameName="thumbnail">
          <a href="product_details.html" classNameName="overlay" >thom</a>
          <a classNameName="zoomTool" href="product_details.html" title="add to cart" style={{display: 'none'}}><span classNameName="icon-search" /> QUICK VIEW</a>
          <a href="product_details.html"><img src="/app/assets/img/a.jpg" alt='thom' /></a>
          <div classNameName="caption cntr">
            <p>Manicure &amp; Pedicure</p>
            <p><strong> $22.00</strong></p>
            <h4><a classNameName="shopBtn" href="#st" title="add to cart"> Add to cart </a></h4>
            <div classNameName="actionList">
              <a classNameName="pull-left" href="#st">Add to Wish List </a> 
              <a classNameName="pull-left" href="#st"> Add to Compare </a>
            </div> 
            <br classNameName="clr" />
          </div>
        </div>
      </li>
      <li classNameName="span3">
        <div classNameName="thumbnail">
          <a href="product_details.html" classNameName="overlay">thom</a>
          <a classNameName="zoomTool" href="product_details.html" title="add to cart" style={{display: 'none'}}><span classNameName="icon-search" /> QUICK VIEW</a>
          <a href="product_details.html"><img src="/app/assets/img/a.jpg" alt='thom' /></a>
          <div classNameName="caption cntr">
            <p>Manicure &amp; Pedicure</p>
            <p><strong> $22.00</strong></p>
            <h4><a classNameName="shopBtn" href="#st" title="add to cart"> Add to cart </a></h4>
            <div classNameName="actionList">
              <a classNameName="pull-left" href="#st">Add to Wish List </a> 
              <a classNameName="pull-left" href="#st"> Add to Compare </a>
            </div> 
            <br classNameName="clr" />
          </div>
        </div>
      </li>
      <li classNameName="span3">
        <div classNameName="thumbnail">
          <a href="product_details.html" classNameName="overlay">thom</a>
          <a classNameName="zoomTool" href="product_details.html" title="add to cart" style={{display: 'none'}}><span classNameName="icon-search" /> QUICK VIEW</a>
          <a href="product_details.html"><img src="/app/assets/img/a.jpg" alt='thom' /></a>
          <div classNameName="caption cntr">
            <p>Manicure &amp; Pedicure</p>
            <p><strong> $22.00</strong></p>
            <h4><a classNameName="shopBtn" href="#st" title="add to cart"> Add to cart </a></h4>
            <div classNameName="actionList">
              <a classNameName="pull-left" href="#st">Add to Wish List </a> 
              <a classNameName="pull-left" href="#st"> Add to Compare </a>
            </div> 
            <br classNameName="clr" />
          </div>
        </div>
      </li>
      <li classNameName="span3">
        <div classNameName="thumbnail">
          <a href="product_details.html" classNameName="overlay">thom</a>
          <a classNameName="zoomTool" href="product_details.html" title="add to cart" style={{display: 'none'}}><span classNameName="icon-search" /> QUICK VIEW</a>
          <a href="product_details.html"><img src="/app/assets/img/a.jpg" alt='thom' /></a>
          <div classNameName="caption cntr">
            <p>Manicure &amp; Pedicure</p>
            <p><strong> $22.00</strong></p>
            <h4><a classNameName="shopBtn" href="#st" title="add to cart"> Add to cart </a></h4>
            <div classNameName="actionList">
              <a classNameName="pull-left" href="#st">Add to Wish List </a> 
              <a classNameName="pull-left" href="#st"> Add to Compare </a>
            </div> 
            <br classNameName="clr" />
          </div>
        </div>
      </li>
      <li classNameName="span3">
        <div classNameName="thumbnail">
          <a href="product_details.html" classNameName="overlay">thom</a>
          <a classNameName="zoomTool" href="product_details.html" title="add to cart"><span classNameName="icon-search" /> QUICK VIEW</a>
          <a href="product_details.html"><img src="/app/assets/img/a.jpg" alt='thom' /></a>
          <div classNameName="caption cntr">
            <p>Manicure &amp; Pedicure</p>
            <p><strong> $22.00</strong></p>
            <h4><a classNameName="shopBtn" href="#st" title="add to cart"> Add to cart </a></h4>
            <div classNameName="actionList">
              <a classNameName="pull-left" href="#st">Add to Wish List </a> 
              <a classNameName="pull-left" href="#st"> Add to Compare </a>
            </div> 
            <br classNameName="clr" />
          </div>
        </div>
      </li>
      <li classNameName="span3">
        <div classNameName="thumbnail">
          <a href="product_details.html" classNameName="overlay" >thom</a>
          <a classNameName="zoomTool" href="product_details.html" title="add to cart" style={{display: 'none'}}><span classNameName="icon-search" /> QUICK VIEW</a>
          <a href="product_details.html"><img src="/app/assets/img/a.jpg" alt='thom' /></a>
          <div classNameName="caption cntr">
            <p>Manicure &amp; Pedicure</p>
            <p><strong> $22.00</strong></p>
            <h4><a classNameName="shopBtn" href="#st" title="add to cart"> Add to cart </a></h4>
            <div classNameName="actionList">
              <a classNameName="pull-left" href="#st">Add to Wish List </a> 
              <a classNameName="pull-left" href="#st"> Add to Compare </a>
            </div> 
            <br classNameName="clr" />
          </div>
        </div>
      </li>
      <li classNameName="span3">
        <div classNameName="thumbnail">
          <a href="product_details.html" classNameName="overlay">thom</a>
          <a classNameName="zoomTool" href="product_details.html" title="add to cart" style={{display: 'none'}}><span classNameName="icon-search" /> QUICK VIEW</a>
          <a href="product_details.html"><img src="/app/assets/img/b.jpg" alt='thom' /></a>
          <div classNameName="caption cntr">
            <p>Manicure &amp; Pedicure</p>
            <p><strong> $22.00</strong></p>
            <h4><a classNameName="shopBtn" href="#st" title="add to cart"> Add to cart </a></h4>
            <div classNameName="actionList">
              <a classNameName="pull-left" href="#st">Add to Wish List </a> 
              <a classNameName="pull-left" href="#st"> Add to Compare </a>
            </div> 
            <br classNameName="clr" />
          </div>
        </div>
      </li>
      <li classNameName="span3">
        <div classNameName="thumbnail">
          <a href="product_details.html" classNameName="overlay" >thom</a>
          <a classNameName="zoomTool" href="product_details.html" title="add to cart" style={{display: 'none'}}><span classNameName="icon-search" /> QUICK VIEW</a>
          <a href="product_details.html"><img src="/app/assets/img/c.jpg" alt='thom' /></a>
          <div classNameName="caption cntr">
            <p>Manicure &amp; Pedicure</p>
            <p><strong> $22.00</strong></p>
            <h4><a classNameName="shopBtn" href="#st" title="add to cart"> Add to cart </a></h4>
            <div classNameName="actionList">
              <a classNameName="pull-left" href="#st">Add to Wish List </a> 
              <a classNameName="pull-left" href="#st"> Add to Compare </a>
            </div> 
            <br classNameName="clr" />
          </div>
        </div>
      </li>
      <li classNameName="span3">
        <div classNameName="thumbnail">
          <a href="product_details.html" classNameName="overlay" >thom</a>
          <a classNameName="zoomTool" href="product_details.html" title="add to cart" style={{display: 'none'}}><span classNameName="icon-search" /> QUICK VIEW</a>
          <a href="product_details.html"><img src="/app/assets/img/c.jpg" alt='thom' /></a>
          <div classNameName="caption cntr">
            <p>Manicure &amp; Pedicure</p>
            <p><strong> $22.00</strong></p>
            <h4><a classNameName="shopBtn" href="#st" title="add to cart"> Add to cart </a></h4>
            <div classNameName="actionList">
              <a classNameName="pull-left" href="#st">Add to Wish List </a> 
              <a classNameName="pull-left" href="#st"> Add to Compare </a>
            </div> 
            <br classNameName="clr" />
          </div>
        </div>
      </li>
    </ul>
  </div> */}
    </div>
  );
}
