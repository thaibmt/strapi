
import {axiosInstance} from "./axiosInstance";
export const productApi={
    getAll(params){
        var url ='/products';
        return axiosInstance.get(url,{params})
    },
    get(id)
    {
        var url =`/products/${id}`
        return axiosInstance.get(url)
    },
    add(data)
    {
        var url=`/products`
        return axiosInstance.put(url,data)
    },
    del(id)
    {
        var url=`/products/${id}`
        return axiosInstance.delete(url)
    }
}