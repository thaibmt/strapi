import React, { useEffect } from "react";
import { useState } from "react";
import Loading from "../../components/Loading";
import { categoryApi } from "../../API/categoryApi";
import { productApi } from "../../API/productApi";
import ProductBox from "../../components/ProductBox";
import CategoryMenu from "./CategoryMenu";
import { useParams } from "react-router-dom";
import Paginate from "../../components/Paginate";
import Filter from "../productDetail/Filter";


export default function ProductList() {
  var { pageNum } = useParams();
  var [categories, setCategories] = useState({});
  var [products, setProducts] = useState({});
  var [loading, setLoading] = useState(true);
  var [totalPage, setTotalPage] = useState(1);
  var [filterkey, setFilterKey] = useState("");
  var [maxPrice, setMaxPrice] = useState(null);
  var [category, setCategory]=useState(null);

  const handleFilterByName = (e) => {
    setFilterKey(e.target.value);
  };

  const handleFilterByMaxPrice = (e) => {
    setMaxPrice(e.target.value);
  };
  const handleFilterCategory=(e)=>{
    if(e.target.innerText=='All categories') setCategory(null)
    else
    setCategory(e.target.innerText)
  }
  var myView1 =
    loading === true ? <Loading /> : <CategoryMenu categories={categories} handleFilterCategory={handleFilterCategory} />;
  var myView2 =
    loading === true ? <Loading /> : <ProductBox products={products} />;
  var params = {
    populate: "*",
    pagination:{
      page:pageNum?pageNum:1,
      pageSize:12
    },
    filters:{
      productName:{
        $contains:filterkey?filterkey:null,
      },
      price:{
        $lt:maxPrice?maxPrice:null,
      },
      category:{
        categoryName:{
          $eq:category?category:null
        }
      }
    }
    
    // 'pagination[pageSize]':12,
    // 'pagination[page]':1

    /* "pagination[page]": pageNum ? pageNum : 1,
    "pagination[pageSize]": 16,
    "filters[productName][$contains]": filterkey ? filterkey : null,
    "filters[price][$lt]": maxPrice ? maxPrice : 900000,
    */
  };
  // console.log(myView2);
  let currentPage = useParams("pageNum");
  if (currentPage.pageNum > totalPage) {
    currentPage.pageNum = 1;
  }
  useEffect(() => {
    const fetchData = async () => {
      var response1 = await categoryApi.getAll();
      var response2 = await productApi.getAll(params);
      setTotalPage(response2.data.meta.pagination.pageCount);
      setCategories(response1.data.data);
      setProducts(response2.data.data);
      setTotalPage(response2.data.meta.pagination.pageCount);
      setLoading(false);
      console.log(response2);
    };
    fetchData();
  }, [currentPage, filterkey, maxPrice, category]);
  return (
    <div className="row">
      <div id="sidebar" className="span3">
        {myView1}
      </div>
      <div className="span9">
        <Filter
          handleFilterByName={handleFilterByName}
          handleFilterByMaxPrice={handleFilterByMaxPrice}
        />
        {myView2}
        <Paginate
          totalPage={totalPage}
          currentPage={currentPage.pageNum ? currentPage.pageNum : 1}
          basePath="http://localhost:3000/product/page/"
        />
      </div>
    </div>

    //  <div className="row">
    //   <div id="sidebar" className="span3">
    //     <div className="well well-small">
    //       <nav className="megamenu">
    //         <ul className="nav nav-list">
    //           <li><a href="#st">Trang điểm</a><ul>
    //               <li><a href="#st">Trang điểm mặt</a>
    //                 <ul>
    //                   <li>
    //                     <a href="#st">Kem nền - Bảng phấn nền</a>
    //                   </li>
    //                   <li>
    //                     <a href="#st">Phấn phủ</a>
    //                   </li>
    //                   </ul>
    //                   </li>
    //                   <li>
    //                     <a href="#st">Trang điểm mắt</a>
    //                     <ul>
    //                       <li>
    //                         <a href="#st">Phấn mắt</a>
    //                       </li>
    //                       <li>
    //                         <a href="#st">Bút kẻ mắt</a>
    //                       </li>
    //                       </ul>
    //                         </li>
    //                         </ul>
    //                       </li>
    //                       <li>
    //                         <a href="#st">Chăm sóc da</a>
    //                       <ul>
    //                         <li><a href="#st">Dưỡng da</a>
    //                         <ul>
    //                           <li>
    //                             <a href="#st">Kem dưỡng ẩm</a>
    //                         </li>
    //                         <li>
    //                           <a href="#st">Xịt dưỡng - Xịt khoáng</a>
    //                       </li>
    //                       </ul>
    //                       </li>
    //                       <li>
    //                         <a href="#st">Làm sạch da</a>
    //                         <ul>
    //                           <li>
    //                             <a href="#st">Tẩy trang</a>
    //                           </li>
    //                           <li>
    //                             <a href="#st">Sữa rửa mặt</a>
    //                           </li>
    //                           <li>
    //                             <a href="#st">Khăn - Bông tẩy trang</a>
    //                           </li>
    //                           </ul>
    //                           </li>
    //                           </ul>
    //                           </li>
    //                           </ul>
    //       </nav>
    //     </div>
    //     <div className="well well-small alert alert-warning cntr">
    //       <h2>50% Discount</h2>
    //       <p>
    //         only valid for online order. <br /><br />
    //         <a className="defaultBtn" href="#st">Click here </a>
    //       </p>
    //     </div>
    //     <div className="well well-small"><a href="#st"><img src="/app/assets/img/paypal.jpg" alt="payment method paypal" /></a></div>
    //     <a className="shopBtn btn-block" href="#st">Upcoming products <br /><small>Click to view</small></a>
    //     <br />
    //     <br />
    //     <ul className="nav nav-list promowrapper">
    //       <li>
    //         <div className="thumbnail">
    //           <a className="zoomTool" href="product_details.html" title="add to cart"><span className="icon-search" /> QUICK VIEW</a>
    //           <img src="/app/assets/img/bootstrap-ecommerce-templates.png" alt="bootstrap ecommerce templates" />
    //           <div className="caption">
    //             <h4><a className="defaultBtn" href="product_details.html">VIEW</a> <span className="pull-right">$22.00</span></h4>
    //           </div>
    //         </div>
    //       </li>
    //       <li style={{border: 0}}> &nbsp;</li>
    //       <li>
    //         <div className="thumbnail">
    //           <a className="zoomTool" href="product_details.html" title="add to cart"><span className="icon-search" /> QUICK VIEW</a>
    //           <img src="/app/assets/img/shopping-cart-template.png" alt="shopping cart template" />
    //           <div className="caption">
    //             <h4><a className="defaultBtn" href="product_details.html">VIEW</a> <span className="pull-right">$22.00</span></h4>
    //           </div>
    //         </div>
    //       </li>
    //       <li style={{border: 0}}> &nbsp;</li>
    //       <li>
    //         <div className="thumbnail">
    //           <a className="zoomTool" href="product_details.html" title="add to cart"><span className="icon-search" /> QUICK VIEW</a>
    //           <img src="/app/assets/img/bootstrap-template.png" alt="bootstrap template" />
    //           <div className="caption">
    //             <h4><a className="defaultBtn" href="product_details.html">VIEW</a> <span className="pull-right">$22.00</span></h4>
    //           </div>
    //         </div>
    //       </li>
    //     </ul>
    //   </div>
    //   <div className="span9">

    //     <div className="well well-small">
    //       <h3>Our Products </h3>
    //       <div className="row-fluid">
    //         <ul className="thumbnails">
    //           <li className="span3">
    //             <div className="thumbnail">
    //               <a href="product_details.html" className="overlay" >thom</a>
    //               <a className="zoomTool" href="product_details.html" title="add to cart" style={{display: 'none'}}><span className="icon-search" /> QUICK VIEW</a>
    //               <a href="product_details.html"><img src="assets/img/a.jpg" alt='thom' /></a>
    //               <div className="caption cntr">
    //                 <p>Manicure &amp; Pedicure</p>
    //                 <p><strong> $22.00</strong></p>
    //                 <h4><a className="shopBtn" href="#st" title="add to cart"> Add to cart </a></h4>
    //                 <div className="actionList">
    //                   <a className="pull-left" href="#st">Add to Wish List </a>
    //                   <a className="pull-left" href="#st"> Add to Compare </a>
    //                 </div>
    //                 <br className="clr" />
    //               </div>
    //             </div>
    //           </li>
    //           <li className="span3">
    //             <div className="thumbnail">
    //               <a href="product_details.html" className="overlay" >thom</a>
    //               <a className="zoomTool" href="product_details.html" title="add to cart" style={{display: 'none'}}><span className="icon-search" /> QUICK VIEW</a>
    //               <a href="product_details.html"><img src="assets/img/a.jpg" alt='thom' /></a>
    //               <div className="caption cntr">
    //                 <p>Manicure &amp; Pedicure</p>
    //                 <p><strong> $22.00</strong></p>
    //                 <h4><a className="shopBtn" href="#st" title="add to cart"> Add to cart </a></h4>
    //                 <div className="actionList">
    //                   <a className="pull-left" href="#st">Add to Wish List </a>
    //                   <a className="pull-left" href="#st"> Add to Compare </a>
    //                 </div>
    //                 <br className="clr" />
    //               </div>
    //             </div>
    //           </li>
    //           <li className="span3">
    //             <div className="thumbnail">
    //               <a href="product_details.html" className="overlay" >thom</a>
    //               <a className="zoomTool" href="product_details.html" title="add to cart" style={{display: 'none'}}><span className="icon-search" /> QUICK VIEW</a>
    //               <a href="product_details.html"><img src="assets/img/a.jpg" alt='thom' /></a>
    //               <div className="caption cntr">
    //                 <p>Manicure &amp; Pedicure</p>
    //                 <p><strong> $22.00</strong></p>
    //                 <h4><a className="shopBtn" href="#st" title="add to cart"> Add to cart </a></h4>
    //                 <div className="actionList">
    //                   <a className="pull-left" href="#st">Add to Wish List </a>
    //                   <a className="pull-left" href="#st"> Add to Compare </a>
    //                 </div>
    //                 <br className="clr" />
    //               </div>
    //             </div>
    //           </li>
    //           <li className="span3">
    //             <div className="thumbnail">
    //               <a href="product_details.html" className="overlay" >thom</a>
    //               <a className="zoomTool" href="product_details.html" title="add to cart" style={{display: 'none'}}><span className="icon-search" /> QUICK VIEW</a>
    //               <a href="product_details.html"><img src="assets/img/a.jpg" alt='thom' /></a>
    //               <div className="caption cntr">
    //                 <p>Manicure &amp; Pedicure</p>
    //                 <p><strong> $22.00</strong></p>
    //                 <h4><a className="shopBtn" href="#st" title="add to cart"> Add to cart </a></h4>
    //                 <div className="actionList">
    //                   <a className="pull-left" href="#st">Add to Wish List </a>
    //                   <a className="pull-left" href="#st"> Add to Compare </a>
    //                 </div>
    //                 <br className="clr" />
    //               </div>
    //             </div>
    //           </li>
    //           <li className="span3">
    //             <div className="thumbnail">
    //               <a href="product_details.html" className="overlay" >thom</a>
    //               <a className="zoomTool" href="product_details.html" title="add to cart" style={{display: 'none'}}><span className="icon-search" /> QUICK VIEW</a>
    //               <a href="product_details.html"><img src="assets/img/a.jpg" alt='thom' /></a>
    //               <div className="caption cntr">
    //                 <p>Manicure &amp; Pedicure</p>
    //                 <p><strong> $22.00</strong></p>
    //                 <h4><a className="shopBtn" href="#st" title="add to cart"> Add to cart </a></h4>
    //                 <div className="actionList">
    //                   <a className="pull-left" href="#st">Add to Wish List </a>
    //                   <a className="pull-left" href="#st"> Add to Compare </a>
    //                 </div>
    //                 <br className="clr" />
    //               </div>
    //             </div>
    //           </li>
    //           <li className="span3">
    //             <div className="thumbnail">
    //               <a href="product_details.html" className="overlay" >thom</a>
    //               <a className="zoomTool" href="product_details.html" title="add to cart"><span className="icon-search" /> QUICK VIEW</a>
    //               <a href="product_details.html"><img src="assets/img/a.jpg" alt='thom' /></a>
    //               <div className="caption cntr">
    //                 <p>Manicure &amp; Pedicure</p>
    //                 <p><strong> $22.00</strong></p>
    //                 <h4><a className="shopBtn" href="#st" title="add to cart"> Add to cart </a></h4>
    //                 <div className="actionList">
    //                   <a className="pull-left" href="#st">Add to Wish List </a>
    //                   <a className="pull-left" href="#st"> Add to Compare </a>
    //                 </div>
    //                 <br className="clr" />
    //               </div>
    //             </div>
    //           </li>
    //           <li className="span3">
    //             <div className="thumbnail">
    //               <a href="product_details.html" className="overlay" >thom</a>
    //               <a className="zoomTool" href="product_details.html" title="add to cart"><span className="icon-search" /> QUICK VIEW</a>
    //               <a href="product_details.html"><img src="assets/img/b.jpg" alt='thom' /></a>
    //               <div className="caption cntr">
    //                 <p>Manicure &amp; Pedicure</p>
    //                 <p><strong> $22.00</strong></p>
    //                 <h4><a className="shopBtn" href="#st" title="add to cart"> Add to cart </a></h4>
    //                 <div className="actionList">
    //                   <a className="pull-left" href="#st">Add to Wish List </a>
    //                   <a className="pull-left" href="#st"> Add to Compare </a>
    //                 </div>
    //                 <br className="clr" />
    //               </div>
    //             </div>
    //           </li>
    //           <li className="span3">
    //             <div className="thumbnail">
    //               <a href="product_details.html" className="overlay" >thom</a>
    //               <a className="zoomTool" href="product_details.html" title="add to cart"><span className="icon-search" /> QUICK VIEW</a>
    //               <a href="product_details.html"><img src="assets/img/c.jpg" alt='thom' /></a>
    //               <div className="caption cntr">
    //                 <p>Manicure &amp; Pedicure</p>
    //                 <p><strong> $22.00</strong></p>
    //                 <h4><a className="shopBtn" href="#st" title="add to cart"> Add to cart </a></h4>
    //                 <div className="actionList">
    //                   <a className="pull-left" href="#st">Add to Wish List </a>
    //                   <a className="pull-left" href="#st"> Add to Compare </a>
    //                 </div>
    //                 <br className="clr" />
    //               </div>
    //             </div>
    //           </li>
    //           <li className="span3">
    //             <div className="thumbnail">
    //               <a href="product_details.html" className="overlay" >thom</a>
    //               <a className="zoomTool" href="product_details.html" title="add to cart" style={{display: 'none'}}><span className="icon-search" /> QUICK VIEW</a>
    //               <a href="product_details.html"><img src="assets/img/c.jpg" alt='thom' /></a>
    //               <div className="caption cntr">
    //                 <p>Manicure &amp; Pedicure</p>
    //                 <p><strong> $22.00</strong></p>
    //                 <h4><a className="shopBtn" href="#st" title="add to cart"> Add to cart </a></h4>
    //                 <div className="actionList">
    //                   <a className="pull-left" href="#st">Add to Wish List </a>
    //                   <a className="pull-left" href="#st"> Add to Compare </a>
    //                 </div>
    //                 <br className="clr" />
    //               </div>
    //             </div>
    //           </li>
    //         </ul>
    //       </div>
    //     </div>
    //   </div>
    // </div>
  );
}
