
import AppUrl from "./AppUrl";
import axios from "axios";
const configInstance={
    
    baseURL:AppUrl.baseURL,
    Headers:{
        'Authorization':`Bearer ${AppUrl.tokne}`,
        'Content-Type':'application/jison'

    },
};
export const axiosInstance=axios.create(configInstance);