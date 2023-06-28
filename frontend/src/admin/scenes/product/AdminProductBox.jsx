import React, { useEffect } from "react";
import { useState } from "react";
import AdminProductItem from "./AdminProductItem";
import Loading from "../../../components/Loading";
import { productApi } from "../../../API/productApi";
import { useParams } from "react-router-dom";
import Paginate from "../../../components/Paginate";

export default function AdminProductBox() {
  var [products, setProducts] = useState({});
  var [loading, setLoading] = useState(true);
  var [totalPage, setTotalPage] = useState(1);
  const [msgSuccess, setSuccessMsg] = useState("");
  const [msgWarning, setWarningMsg] = useState("");
  const [loadData, setLoadData] = useState(1);
  const [viewOption, setViewOption] = useState("preview");
  var { pageNum } = useParams();
  const handleDelete = (e) => {
    const deteleProduct = async (id) => {
      var c = window.confirm('delete product?')
      if (c == true)
        try {
          e.target.classList.remove('fa-trash');
          e.target.classList.add('fa-spinner')

          await productApi.del(id);
          e.target.classList.add('fa-trash');
          e.target.classList.remove('fa-spinner')

          setSuccessMsg("Delete success:" + id);
          setLoadData(loadData + 1);
        } catch (error) {
          setWarningMsg("Delete error:" + id + error);
        } finally {
          window.scroll(0, 0);
        }
    };
    deteleProduct(e.target.getAttribute("name"));
  };
  var params = {
    populate: "*",
    "pagination[pageSize]": 12,
    "pagination[page]": pageNum ? pageNum : 1,
    publicationState: viewOption
  };
  var handlePublish = (e) => {
    var data = {
      data: {
        publishedAt: e.target.value == 0 ? Date.now() : null
      }
    }
    const togglePublish = async (e) => {
      await productApi.update(e.target.getAttribute('name'), data);
      setLoadData(loadData + 1);
    }
    togglePublish(e);
  }
  var myView =
    loading === true ? (
      <Loading />
    ) : (
      products.map((product, i) => (
        <AdminProductItem
          key={product.id}
          stt={((pageNum ? parseInt(pageNum) : 1) - 1) * 12 + i + 1}
          product={product}
          handleDelete={handleDelete}
          handlePublish={handlePublish}
        />
      ))
    );
  useEffect(() => {
    const fetchData = async () => {
      var response = await productApi.getAll(params);
      setProducts(response.data.data);
      setTotalPage(response.data.meta.pagination.pageCount);
      setLoading(false);
    };
    fetchData();
  }, [pageNum, loadData, viewOption]);

  var handleSelect = (e) => {
    setViewOption(e.target.value);
  }


  return (
    <div className="card-body">
      <div className="col-12">
        <p className="bg-success">{msgSuccess}</p>
        <p className="bg-warning">{msgWarning}</p>
      </div>

      <div id="example1_wrapper" className="dataTables_wrapper dt-bootstrap4">
        <div className="row">
          <div className="col-sm-12 col-md-6">
            <div className="dt-buttons btn-group flex-wrap">
              {" "}
              <button
                className="btn btn-primary buttons-copy buttons-html5"
                tabIndex={0}
                aria-controls="example1"
                type="button"
              >
                <span>Copy</span>
              </button>{" "}
              <button
                className="btn btn-primary buttons-csv buttons-html5"
                tabIndex={0}
                aria-controls="example1"
                type="button"
              >
                <span>CSV</span>
              </button>{" "}
              <button
                className="btn btn-primary buttons-excel buttons-html5"
                tabIndex={0}
                aria-controls="example1"
                type="button"
              >
                <span>Excel</span>
              </button>{" "}
              <button
                className="btn btn-primary buttons-pdf buttons-html5"
                tabIndex={0}
                aria-controls="example1"
                type="button"
              >
                <span>PDF</span>
              </button>{" "}
              <button
                className="btn btn-primary buttons-print"
                tabIndex={0}
                aria-controls="example1"
                type="button"
              >
                <span>Print</span>
              </button>{" "}
              <div className="btn-group">
                <button
                  className="btn btn-primary buttons-collection dropdown-toggle buttons-colvis"
                  tabIndex={0}
                  aria-controls="example1"
                  type="button"
                  aria-haspopup="true"
                >
                  <span>Column visibility</span>
                  <span className="dt-down-arrow" />
                </button>
              </div>{" "}
            </div>
          </div>
          <div className="col-sm-12 col-md-6">
            <div id="example1_filter" className="dataTables_filter">
              <select onChange={handleSelect}>
                <option value="preview">Tất cả</option>
                <option value="live">Đã xuất bản</option>
              </select>
              <input
                type="search"
                className="form-control form-control-sm"
                placeholder="Tìm kiếm"
                aria-controls="example1"
              />
            </div>
          </div>
        </div>
        <div className="row">
          <div className="col-sm-12">
            <table
              id="example1"
              className="table table-bordered table-striped dataTable dtr-inline"
              aria-describedby="example1_info"
            >
              <thead>
                <tr>
                  <th
                    className="sorting"
                    tabIndex={0}
                    aria-controls="example1"
                    rowSpan={1}
                    colSpan={1}
                    aria-label="Browser: activate to sort column ascending"
                  >
                    STT
                  </th>
                  <th
                    className="sorting"
                    tabIndex={0}
                    aria-controls="example1"
                    rowSpan={1}
                    colSpan={1}
                    aria-label="Browser: activate to sort column ascending"
                  >
                    ID
                  </th>
                  <th
                    className="sorting"
                    tabIndex={0}
                    aria-controls="example1"
                    rowSpan={1}
                    colSpan={1}
                    aria-sort="ascending"
                    aria-label="Rendering engine: activate to sort column descending"
                  >
                    Tên
                  </th>
                  <th
                    className="sorting"
                    tabIndex={0}
                    aria-controls="example1"
                    rowSpan={1}
                    colSpan={1}
                    aria-label="Browser: activate to sort column ascending"
                  >
                    Hình ảnh
                  </th>
                  <th
                    className="sorting"
                    tabIndex={0}
                    aria-controls="example1"
                    rowSpan={1}
                    colSpan={1}
                    aria-label="Platform(s): activate to sort column ascending"
                  >
                    Price
                  </th>
                  <th
                    className="sorting"
                    tabIndex={0}
                    aria-controls="example1"
                    rowSpan={1}
                    colSpan={1}
                    aria-label="Engine version: activate to sort column ascending"
                  >
                    Xuất bản
                  </th>
                  <th
                    className="sorting"
                    tabIndex={0}
                    aria-controls="example1"
                    rowSpan={1}
                    colSpan={1}
                    aria-label="CSS grade: activate to sort column ascending"
                  >
                    Tác vụ
                  </th>
                </tr>
              </thead>
              <tbody>
                {/* <AdminProductItem /> */}
                {myView}
              </tbody>
            </table>
          </div>
        </div>
        <Paginate
          totalPage={totalPage}
          currentPage={pageNum ? pageNum : 1}
          basePath="http://localhost:3000/admin/product/page/"
        />
      </div>
    </div>
  );
}
