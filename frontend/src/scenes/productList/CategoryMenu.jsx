import React from "react";
import { Link } from "react-router-dom";

export default function CategoryMenu(props) {
  const categories = props.categories;
  const handleFilterCategory = props.handleFilterCategory;
  var myView = categories.map((category) => (
    <li key={category.id}>
      <Link to="/product" onClick={handleFilterCategory}>
        {category.attributes.categoryName}
      </Link>
      {/* <a href='st'>{category.attributes.categoryName}</a>  */}
    </li>
  ));
  return (
    <div className="well well-small">
      <nav className="megamenu">
        <ul className="nav nav-list">
          <li>
            <Link to="/product" onClick={handleFilterCategory}>
              All categories
            </Link>
          </li>
          {myView}
          {/* <li>
        <a href="#stst">Trang điểm</a>
        <ul>
          <li>
            <a href="#stst">Trang điểm mặt</a>
            <ul>
              <li>
                <a href="#stst">Kem nền - Bảng phấn nền</a>
              </li>
              <li>
                <a href="#stst">Phấn phủ</a>
                </li>
                </ul>
                </li>
                <li>
                    <a href="#stst">Trang điểm mắt</a>
                    <ul>
                        <li>
                            <a href="#stst">Phấn mắt</a>
                    </li>
                    <li>
                        <a href="#stst">Bút kẻ mắt</a>
                        </li>
                        </ul>
                        </li>
                        </ul>
        </li>
                        <li>
                            <a href="#stst">Chăm sóc da</a>
                            <ul>
                                <li><a href="#stst">Dưỡng da</a>
                                <ul>
                                    <li>
                                        <a href="#stst">Kem dưỡng ẩm</a>
                                </li>
                                <li>
                                    <a href="#stst">Xịt dưỡng - Xịt khoáng</a>
                                    </li>
                                    </ul>
                                    </li>
                                    <li>
                                        <a href="#stst">Làm sạch da</a>
                                        <ul>
                                            <li>
                                                <a href="#stst">Tẩy trang</a>
                            </li>
                            <li>
                            <a href="#stst">Sữa rửa mặt</a>
                            </li>
                            <li>
                                <a href="#stst">Khăn - Bông tẩy trang</a>
                            </li>
                            </ul>
                            </li>
                            </ul>
                            </li> */}
        </ul>
      </nav>
    </div>
  );
}
