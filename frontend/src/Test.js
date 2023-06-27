// import React from 'react'
// import { categoryApi } from './API/categoryApi'

// export default function Test() {
//     const fetchcategories=async()=>{
//     var response= await categoryApi.getAll()
//     console.log(response.data.data)
//     }
//     fetchcategories()
//   return ( 
//     <div>
//       Test api
//     </div>
//   )
// }
import React from "react";
import Picture from "./example/picture/Picture";
export default function App(){
  return(
    <div>
      <Picture />
    </div>
  )
}