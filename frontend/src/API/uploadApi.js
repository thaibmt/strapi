import axios from "axios";
import AppUrl from "./AppUrl";
const configInstance = {
    baseURL: AppUrl.BaseURL,
    headers: {
        Authorization: `Bearer ${AppUrl.token}`,
        "Content-Type": "multipart/form-data",
    },
};
const axiosInstance = axios.create(configInstance);
export const uploadApi = {
    upload(data) {
        var url = '/upload';
        return axiosInstance.post(url, data);
    },
};
