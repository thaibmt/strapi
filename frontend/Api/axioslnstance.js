
import AppUrl from "./AppUrl";
import axios from "axios";
const configInstance = {

    baseURL: AppUrl.baseURL,
    Headers: {
        'Authorization': `Bearer ${AppUrl.token}`,
        'Content-Type': 'application/json'

    },
};
export const axiosInstance = axios.create(configInstance);