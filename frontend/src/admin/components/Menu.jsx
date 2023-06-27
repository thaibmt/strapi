import React from "react";
import { Link } from "react-router-dom";

export default function Menu() {
  return (
    <aside className="main-sidebar sidebar-dark-primary elevation-4">
      {/* Brand Logo */}
      <a href="../../index3.html" className="brand-link">
        <img
          src="/admin/dist/img/AdminLTELogo.png"
          alt="AdminLTE Logo"
          className="brand-image img-circle elevation-3"
          style={{ opacity: ".8" }}
        />
        <span className="brand-text font-weight-light">Admin</span>
      </a>
      {/* Sidebar */}
      <div className="sidebar">
        <nav className="mt-2">
          <ul
            className="nav nav-pills nav-sidebar flex-column"
            data-widget="treeview"
            role="menu"
            data-accordion="false"
          >
            {/* Add icons to the links using the .nav-icon class
         with font-awesome or any other icon font library */}
            <li className="nav-item menu-is-opening menu-open">
              <a href="#st" className="nav-link">
                <i className="nav-icon fas fa-table" />
                <p>
                  QUẢN LÝ
                  <i className="fas fa-angle-left right" />
                </p>
              </a>
              <ul className="nav nav-treeview" style={{ display: "block" }}>
                <li className="nav-item">
                  <Link to='/admin/product' className="nav-link">
                    <i className="far fa-circle nav-icon" />
                    <p>Quản lý Products</p>
                  </Link>
                </li>
                <li className="nav-item">
                  <a href="../tables/data.html" className="nav-link">
                    <i className="far fa-circle nav-icon" />
                    <p>DataTables</p>
                  </a>
                </li>
                <li className="nav-item">
                  <a href="../tables/jsgrid.html" className="nav-link">
                    <i className="far fa-circle nav-icon" />
                    <p>jsGrid</p>
                  </a>
                </li>
              </ul>
            </li>
          </ul>
        </nav>
        {/* /.sidebar-menu */}
      </div>
      {/* /.sidebar */}
    </aside>
  );
}
