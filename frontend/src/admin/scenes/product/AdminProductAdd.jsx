import React, { useEffect, useRef, useState } from 'react'
import { categoryApi } from '../../../API/categoryApi';
import { productApi } from '../../../API/productApi';
import AppUrl from '../../../API/AppUrl';
import axios from 'axios';
export default function AdminProductAdd() {
  const [msgSuccess, setSuccessMsg] = useState("");
  const [msgWarning, setWarningMsg] = useState("");
  const [categories, setCategories] = useState([]);
  const [productName, setProductName] = useState("");
  const [description, setDescription] = useState("");
  const [detail, setDetail] = useState("");
  const [price, setPrice] = useState(0);
  const [category, setCategory] = useState("");
  const [loadData, setLoadData] = useState(0);
  const imageRef = useRef(null);

  useEffect(() => {
    const fetchData = async () => {
      var response = await categoryApi.getAll();
      setCategories(response.data.data);
    };
    fetchData();
  }, [loadData]);
  const configInstance = {

    baseURL: AppUrl.baseURL,
    Headers: {
      'Authorization': `Bearer ${AppUrl.token}`,
      'Content-Type': 'multipart/form-data'

    },
  };
  const axiosInstanceUpload = axios.create(configInstance);
  const handleSaveProduct = e => {
    e.preventDefault();
    let data = {
      data: {
        productName,
        description,
        detail,
        price,
        category
      }
    }

    let save = async () => {
      try {
        let file = new FormData(document.querySelector('#form'));
        let response = await uploadImage(file);
        if (response.status === 200) {
          Object.assign(data.data, { image: [response.data[0].id] })
        }
        let res = await productApi.add(data);
        setSuccessMsg("Tạo sản phẩm thành công:" + res.data.id);
        setLoadData(loadData + 1);
      } catch (error) {
        console.log(error)
        setWarningMsg(error.message);
      }
    }
    save();
  }
  const uploadImage = (data) => {
    return axiosInstanceUpload.post('http://localhost:3001/api/upload', data);
  }
  const handleProductName = (e) => {
    setProductName(e.target.value);
  }
  const handleDescription = (e) => {
    setDescription(e.target.value);
  }
  const handlePrice = (e) => {
    setPrice(e.target.value);
  }
  const handleDetail = (e) => {
    setDetail(e.target.value);
  }
  const handleCategory = (e) => {
    setCategory(e.target.value);
  }
  return (
    <div>
      <div className="col-12">
        <p className="bg-success">{msgSuccess}</p>
        <p className="bg-warning">{msgWarning}</p>
      </div>
      <form id="form">
        <div className="form-group">
          <div className="col">
            <label>Tên sản phẩm (*)</label>
            <input
              className="form-control"
              name="name"
              placeholder="Tên sản phẩm"
              required
              value={productName}
              onChange={handleProductName}
            />
          </div>
          <div className="col">
            <label>Giá</label>
            <input className="form-control" type="number" name="price" min="0" placeholder="Giá" value={price} onChange={handlePrice} />
          </div>
        </div>
        <div className="form-group">
          <div className="col">
            <label>Mô tả</label>
            <input className="form-control" name="description" placeholder="" value={description} onChange={handleDescription} />
          </div>
          <div className="col">
            <label>Chi tiết</label>
            <input className="form-control" name="detail" placeholder="" value={detail} onChange={handleDetail} />
          </div>
        </div>
        <div className="form-group">
          <select name="category" value={category} onChange={handleCategory}>
            <option>Chọn danh mục</option>
            {
              categories.map(cat => {
                return <option key={cat.id} value={cat.id}>{cat.attributes.categoryName}</option>;
              })
            }
          </select>
          <div className="col">
            <label>Hình ảnh</label>
            <input className="" type="file" name="files" ref={imageRef} />
          </div>
        </div>
        <div>
          <button className="btn btn-primary" onClick={handleSaveProduct}>Tạo sản phẩm</button>
        </div>
      </form>
    </div>
  )
}
