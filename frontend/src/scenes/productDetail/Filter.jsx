import React from "react";

export default function Filter(props) {
  var handleFilterByName = props.handleFilterByName;
  var handleFilterByMaxPrice = props.handleFilterByMaxPrice;
  return (
    <>
      <div className="well wel-small" style={{ display:'flex',justifyContent:"space-between" }}>
        <div style={{ display:'flex'}}>
          <span style={{ fontSize:'15px',marginTop:'5px',marginRight:"5px" }}>Name: </span>
          
          <input
            type="text"
            placeholder="Name"
            /* className='search-query span2' */ onChange={handleFilterByName}
          />
        </div>
        <div style={{ display:'flex'}} className="">
          <span style={{ fontSize:'15px',marginTop:'5px',marginRight:"5px" }}>Max:</span>
          
          <input
            type="text"
            placeholder="Max"
            /* className='search-query span2' */ onChange={
              handleFilterByMaxPrice
            }
          />
        </div>
      </div>
    </>
  );
}
