// const { default: axios } = require("axios");

// const InstanceConfig={
//     // url:'/categories',
//     baseURL:'http://localhost:1337/api/',
//     // method:'get',
//     headers:
//     {
//         'Authorization':`Bearer ${token}`,
//         'Content-Type':'application/json'
//     },
//     // params:{
//     //     fields: ['categoryName', 'description']
//     // }
// };
// const axiosInstanceConfig=axios.create(InstanceConfig);

import axios from "axios";
import AppUrl from "./AppUrl";
const configInstance = {
    baseURL: AppUrl.BaseURL,
    headers: {
        Authorization: `Bearer ${AppUrl.token}`,
        "Content-Type": "application/json",
    },
};
export const axiosInstance = axios.create(configInstance);
