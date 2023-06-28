import React from "react";
import { useEffect } from "react";
import { useState } from "react";
import { useParams } from "react-router-dom";
import { productApi } from "../../API/productApi";
import Loading from "../../components/Loading";
import PictureBox from "./PictureBox";
import currency from "currency.js";
import { useDispatch } from "react-redux";
import { addToCart } from "../../state/cartSlice";

export default function ProductDetail() {
  const dispatch = useDispatch();
  var { id } = useParams();
  const [products, setProducts] = useState({});
  const [loading, setLoading] = useState(true);
  var params = {
    populate: "*",
  };
  useEffect(() => {
    const fetchProduct = async () => {
      const response = await productApi.get(id, params);
      console.log(response);
      setProducts(response.data.data);
      setLoading(false);
    };
    fetchProduct();
  }, []);
  var myView1 =
    loading === true ? (
      <Loading />
    ) : (
      <PictureBox images={products.attributes?.image?.data} />
    );
  var myView2 =
    loading === true ? (
      <Loading />
    ) : (
      <div>
        <h3>
          {products.attributes.productName} [
          {currency(products.attributes?.price, {
            symbol: "đ",
            separator: ".",
            decimal: ",",
          }).format()}
          ]
        </h3>
        <hr className="soft" />
        <form className="form-horizontal qtyFrm">
          <div className="control-group">
            <label className="control-label">
              <span>
                {currency(products.attributes.price, {
                  symbol: "đ",
                  separator: ".",
                  decimal: ",",
                }).format()}
              </span>
            </label>
            <div className="controls">
              <input type="number" className="span6" placeholder="Qty." />
            </div>
          </div>
          <div className="control-group">
            <label className="control-label">
              <span>Color</span>
            </label>
            <div className="controls">
              <select className="span11">
                <option>Red</option>
                <option>Purple</option>
                <option>Pink</option>
                <option>Red</option>
              </select>
            </div>
          </div>
          <div className="control-group">
            <label className="control-label">
              <span>Materials</span>
            </label>
            <div className="controls">
              <select className="span11">
                <option>Material 1</option>
                <option>Material 2</option>
                <option>Material 3</option>
                <option>Material 4</option>
              </select>
            </div>
          </div>
          <h4>100 items in stock</h4>
          <p>
            Nowadays the lingerie industry is one of the most successful
            business spheres. Nowadays the lingerie industry is one of ...
          </p>
          <p>
            <button
              type="submit"
              className="shopBtn"
              onClick={() =>
                dispatch(addToCart({ item: { ...products, count: 1 } }))
              }
            >
              <span className=" icon-shopping-cart" /> Add to cart
            </button>
          </p>
        </form>
      </div>
    );
  var myView3 =
    loading == true ? (
      <Loading />
    ) : (
      <div>
        {products.attributes.productName.description}
      </div>
    );
  return (
    <div className="well well-small">
      <div className="row-fluid">
        <div className="span5">
          {myView1}
          <div id="myCarousel" className="carousel slide cntr">
            <a
              className="left carousel-control"
              href="#myCarousel"
              data-slide="prev"
            >
              ‹
            </a>
            <a
              className="right carousel-control"
              href="#myCarousel"
              data-slide="next"
            >
              ›
            </a>
          </div>
        </div>
        <div className="span7">{myView2}</div>
      </div>
      <hr className="softn clr" />
      <ul id="productDetail" className="nav nav-tabs">
        <li className="active">
          <a href="#sthome" data-toggle="tab">
            Product Details
          </a>
        </li>
        <li>
          <a href="#stprofile" data-toggle="tab">
            Related Products{" "}
          </a>
        </li>
        <li className="dropdown">
          <a href="#st" className="dropdown-toggle" data-toggle="dropdown">
            Acceseries <b className="caret" />
          </a>
          <ul className="dropdown-menu">
            <li>
              <a href="#stcat1" data-toggle="tab">
                Category one
              </a>
            </li>
            <li>
              <a href="#stcat2" data-toggle="tab">
                Category two
              </a>
            </li>
          </ul>
        </li>
      </ul>
      <div id="myTabContent" className="tab-content tabWrapper">
        <div className="tab-pane fade active in" id="home">
          <h4>Product Information</h4>
          <table className="table table-striped">
            <tbody>
              <tr className="techSpecRow">
                <td className="techSpecTD1">Color:</td>
                <td className="techSpecTD2">Black</td>
              </tr>
              <tr className="techSpecRow">
                <td className="techSpecTD1">Style:</td>
                <td className="techSpecTD2">Apparel,Sports</td>
              </tr>
              <tr className="techSpecRow">
                <td className="techSpecTD1">Season:</td>
                <td className="techSpecTD2">spring/summer</td>
              </tr>
              <tr className="techSpecRow">
                <td className="techSpecTD1">Usage:</td>
                <td className="techSpecTD2">fitness</td>
              </tr>
              <tr className="techSpecRow">
                <td className="techSpecTD1">Sport:</td>
                <td className="techSpecTD2">122855031</td>
              </tr>
              <tr className="techSpecRow">
                <td className="techSpecTD1">Brand:</td>
                <td className="techSpecTD2">Shock Absorber</td>
              </tr>
            </tbody>
          </table>
          {myView3}
          <p>
            Raw denim you probably haven't heard of them jean shorts Austin.
            Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache
            cliche tempor, williamsburg carles vegan helvetica. Reprehenderit
            butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi,
            qui irure terry richardson ex squid. Aliquip placeat salvia cillum
            iphone. Seitan aliquip quis cardigan american apparel, butcher
            voluptate nisi qui.
          </p>
          <p>
            Raw denim you probably haven't heard of them jean shorts Austin.
            Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache
            cliche tempor, williamsburg carles vegan helvetica. Reprehenderit
            butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi,
            qui irure terry richardson ex squid. Aliquip placeat salvia cillum
            iphone. Seitan aliquip quis cardigan american apparel, butcher
            voluptate nisi qui.
          </p>
          <p>
            Raw denim you probably haven't heard of them jean shorts Austin.
            Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache
            cliche tempor, williamsburg carles vegan helvetica. Reprehenderit
            butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi,
            qui irure terry richardson ex squid. Aliquip placeat salvia cillum
            iphone. Seitan aliquip quis cardigan american apparel, butcher
            voluptate nisi qui.
          </p>
          <p>
            Raw denim you probably haven't heard of them jean shorts Austin.
            Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache
            cliche tempor, williamsburg carles vegan helvetica. Reprehenderit
            butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi,
            qui irure terry richardson ex squid. Aliquip placeat salvia cillum
            iphone. Seitan aliquip quis cardigan american apparel, butcher
            voluptate nisi qui.
          </p>
          <p>
            Raw denim you probably haven't heard of them jean shorts Austin.
            Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache
            cliche tempor, williamsburg carles vegan helvetica. Reprehenderit
            butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi,
            qui irure terry richardson ex squid. Aliquip placeat salvia cillum
            iphone. Seitan aliquip quis cardigan american apparel, butcher
            voluptate nisi qui.
          </p>
          <p>
            Raw denim you probably haven't heard of them jean shorts Austin.
            Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache
            cliche tempor, williamsburg carles vegan helvetica. Reprehenderit
            butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi,
            qui irure terry richardson ex squid. Aliquip placeat salvia cillum
            iphone. Seitan aliquip quis cardigan american apparel, butcher
            voluptate nisi qui.
          </p>
          <p>
            Raw denim you probably haven't heard of them jean shorts Austin.
            Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache
            cliche tempor, williamsburg carles vegan helvetica. Reprehenderit
            butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi,
            qui irure terry richardson ex squid. Aliquip placeat salvia cillum
            iphone. Seitan aliquip quis cardigan american apparel, butcher
            voluptate nisi qui.
          </p>
        </div>
        <div className="tab-pane fade" id="profile">
          <div className="row-fluid">
            <div className="span2">
              <img src="/app/assets/img/d.jpg" alt="thom" />
            </div>
            <div className="span6">
              <h5>Product Name </h5>
              <p>
                Nowadays the lingerie industry is one of the most successful
                business spheres. We always stay in touch with the latest
                fashion tendencies - that is why our goods are so popular..
              </p>
            </div>
            <div className="span4 alignR">
              <form className="form-horizontal qtyFrm">
                <h3> $140.00</h3>
                <label className="checkbox">
                  <input type="checkbox" /> Adds product to compair
                </label>
                <br />
                <div className="btn-group">
                  <a href="product_details.html" className="defaultBtn">
                    <span className=" icon-shopping-cart" /> Add to cart
                  </a>
                  <a href="product_details.html" className="shopBtn">
                    VIEW
                  </a>
                </div>
              </form>
            </div>
          </div>
          <hr className="soft" />
          <div className="row-fluid">
            <div className="span2">
              <img src="/app/assets/img/d.jpg" alt="thom" />
            </div>
            <div className="span6">
              <h5>Product Name </h5>
              <p>
                Nowadays the lingerie industry is one of the most successful
                business spheres. We always stay in touch with the latest
                fashion tendencies - that is why our goods are so popular..
              </p>
            </div>
            <div className="span4 alignR">
              <form className="form-horizontal qtyFrm">
                <h3> $140.00</h3>
                <label className="checkbox">
                  <input type="checkbox" /> Adds product to compair
                </label>
                <br />
                <div className="btn-group">
                  <a href="product_details.html" className="defaultBtn">
                    <span className=" icon-shopping-cart" /> Add to cart
                  </a>
                  <a href="product_details.html" className="shopBtn">
                    VIEW
                  </a>
                </div>
              </form>
            </div>
          </div>
          <hr className="soft" />
          <div className="row-fluid">
            <div className="span2">
              <img src="/app/assets/img/d.jpg" alt="thom" />
            </div>
            <div className="span6">
              <h5>Product Name </h5>
              <p>
                Nowadays the lingerie industry is one of the most successful
                business spheres. We always stay in touch with the latest
                fashion tendencies - that is why our goods are so popular..
              </p>
            </div>
            <div className="span4 alignR">
              <form className="form-horizontal qtyFrm">
                <h3> $140.00</h3>
                <label className="checkbox">
                  <input type="checkbox" /> Adds product to compair
                </label>
                <br />
                <div className="btn-group">
                  <a href="product_details.html" className="defaultBtn">
                    <span className=" icon-shopping-cart" /> Add to cart
                  </a>
                  <a href="product_details.html" className="shopBtn">
                    VIEW
                  </a>
                </div>
              </form>
            </div>
          </div>
          <hr className="soft" />
          <div className="row-fluid">
            <div className="span2">
              <img src="/app/assets/img/d.jpg" alt="thom" />
            </div>
            <div className="span6">
              <h5>Product Name </h5>
              <p>
                Nowadays the lingerie industry is one of the most successful
                business spheres. We always stay in touch with the latest
                fashion tendencies - that is why our goods are so popular..
              </p>
            </div>
            <div className="span4 alignR">
              <form className="form-horizontal qtyFrm">
                <h3> $140.00</h3>
                <label className="checkbox">
                  <input type="checkbox" /> Adds product to compair
                </label>
                <br />
                <div className="btn-group">
                  <a href="product_details.html" className="defaultBtn">
                    <span className=" icon-shopping-cart" /> Add to cart
                  </a>
                  <a href="product_details.html" className="shopBtn">
                    VIEW
                  </a>
                </div>
              </form>
            </div>
          </div>
          <hr className="soften" />
          <div className="row-fluid">
            <div className="span2">
              <img src="/app/assets/img/d.jpg" alt="thom" />
            </div>
            <div className="span6">
              <h5>Product Name </h5>
              <p>
                Nowadays the lingerie industry is one of the most successful
                business spheres. We always stay in touch with the latest
                fashion tendencies - that is why our goods are so popular..
              </p>
            </div>
            <div className="span4 alignR">
              <form className="form-horizontal qtyFrm">
                <h3> $140.00</h3>
                <label className="checkbox">
                  <input type="checkbox" /> Adds product to compair
                </label>
                <br />
                <div className="btn-group">
                  <a href="product_details.html" className="defaultBtn">
                    <span className=" icon-shopping-cart" /> Add to cart
                  </a>
                  <a href="product_details.html" className="shopBtn">
                    VIEW
                  </a>
                </div>
              </form>
            </div>
          </div>
        </div>
        <div className="tab-pane fade" id="cat1">
          <p>
            Etsy mixtape wayfarers, ethical wes anderson tofu before they sold
            out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table
            readymade. Messenger bag gentrify pitchfork tattooed craft beer,
            iphone skateboard locavore carles etsy salvia banksy hoodie
            helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit
            cred pitchfork. Williamsburg banh mi whatever gluten-free, carles
            pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester
            cred you probably haven't heard of them, vinyl craft beer blog
            stumptown. Pitchfork sustainable tofu synth chambray yr.
          </p>
          <br />
          <br />
          <div className="row-fluid">
            <div className="span2">
              <img src="/app/assets/img/b.jpg" alt="thom" />
            </div>
            <div className="span6">
              <h5>Product Name </h5>
              <p>
                Nowadays the lingerie industry is one of the most successful
                business spheres. We always stay in touch with the latest
                fashion tendencies - that is why our goods are so popular..
              </p>
            </div>
            <div className="span4 alignR">
              <form className="form-horizontal qtyFrm">
                <h3> $140.00</h3>
                <label className="checkbox">
                  <input type="checkbox" /> Adds product to compair
                </label>
                <br />
                <div className="btn-group">
                  <a href="product_details.html" className="defaultBtn">
                    <span className=" icon-shopping-cart" /> Add to cart
                  </a>
                  <a href="product_details.html" className="shopBtn">
                    VIEW
                  </a>
                </div>
              </form>
            </div>
          </div>
          <hr className="soften" />
          <div className="row-fluid">
            <div className="span2">
              <img src="/app/assets/img/a.jpg" alt="thom" />
            </div>
            <div className="span6">
              <h5>Product Name </h5>
              <p>
                Nowadays the lingerie industry is one of the most successful
                business spheres. We always stay in touch with the latest
                fashion tendencies - that is why our goods are so popular..
              </p>
            </div>
            <div className="span4 alignR">
              <form className="form-horizontal qtyFrm">
                <h3> $140.00</h3>
                <label className="checkbox">
                  <input type="checkbox" /> Adds product to compair
                </label>
                <br />
                <div className="btn-group">
                  <a href="product_details.html" className="defaultBtn">
                    <span className=" icon-shopping-cart" /> Add to cart
                  </a>
                  <a href="product_details.html" className="shopBtn">
                    VIEW
                  </a>
                </div>
              </form>
            </div>
          </div>
          <hr className="soften" />
        </div>
        <div className="tab-pane fade" id="cat2">
          <div className="row-fluid">
            <div className="span2">
              <img src="/app/assets/img/d.jpg" alt="thom" />
            </div>
            <div className="span6">
              <h5>Product Name </h5>
              <p>
                Nowadays the lingerie industry is one of the most successful
                business spheres. We always stay in touch with the latest
                fashion tendencies - that is why our goods are so popular..
              </p>
            </div>
            <div className="span4 alignR">
              <form className="form-horizontal qtyFrm">
                <h3> $140.00</h3>
                <label className="checkbox">
                  <input type="checkbox" /> Adds product to compair
                </label>
                <br />
                <div className="btn-group">
                  <a href="product_details.html" className="defaultBtn">
                    <span className=" icon-shopping-cart" /> Add to cart
                  </a>
                  <a href="product_details.html" className="shopBtn">
                    VIEW
                  </a>
                </div>
              </form>
            </div>
          </div>
          <hr className="soften" />
          <div className="row-fluid">
            <div className="span2">
              <img src="/app/assets/img/d.jpg" alt="thom" />
            </div>
            <div className="span6">
              <h5>Product Name </h5>
              <p>
                Nowadays the lingerie industry is one of the most successful
                business spheres. We always stay in touch with the latest
                fashion tendencies - that is why our goods are so popular..
              </p>
            </div>
            <div className="span4 alignR">
              <form className="form-horizontal qtyFrm">
                <h3> $140.00</h3>
                <label className="checkbox">
                  <input type="checkbox" /> Adds product to compair
                </label>
                <br />
                <div className="btn-group">
                  <a href="product_details.html" className="defaultBtn">
                    <span className=" icon-shopping-cart" /> Add to cart
                  </a>
                  <a href="product_details.html" className="shopBtn">
                    VIEW
                  </a>
                </div>
              </form>
            </div>
          </div>
          <hr className="soften" />
          <div className="row-fluid">
            <div className="span2">
              <img src="/app/assets/img/d.jpg" alt="thom" />
            </div>
            <div className="span6">
              <h5>Product Name </h5>
              <p>
                Nowadays the lingerie industry is one of the most successful
                business spheres. We always stay in touch with the latest
                fashion tendencies - that is why our goods are so popular..
              </p>
            </div>
            <div className="span4 alignR">
              <form className="form-horizontal qtyFrm">
                <h3> $140.00</h3>
                <label className="checkbox">
                  <input type="checkbox" /> Adds product to compair
                </label>
                <br />
                <div className="btn-group">
                  <a href="product_details.html" className="defaultBtn">
                    <span className=" icon-shopping-cart" /> Add to cart
                  </a>
                  <a href="product_details.html" className="shopBtn">
                    VIEW
                  </a>
                </div>
              </form>
            </div>
          </div>
          <hr className="soften" />
          <div className="row-fluid">
            <div className="span2">
              <img src="/app/assets/img/d.jpg" alt="thom" />
            </div>
            <div className="span6">
              <h5>Product Name </h5>
              <p>
                Nowadays the lingerie industry is one of the most successful
                business spheres. We always stay in touch with the latest
                fashion tendencies - that is why our goods are so popular..
              </p>
            </div>
            <div className="span4 alignR">
              <form className="form-horizontal qtyFrm">
                <h3> $140.00</h3>
                <label className="checkbox">
                  <input type="checkbox" /> Adds product to compair
                </label>
                <br />
                <div className="btn-group">
                  <a href="product_details.html" className="defaultBtn">
                    <span className=" icon-shopping-cart" /> Add to cart
                  </a>
                  <a href="product_details.html" className="shopBtn">
                    VIEW
                  </a>
                </div>
              </form>
            </div>
          </div>
          <hr className="soften" />
        </div>
      </div>
    </div>
  );
}
