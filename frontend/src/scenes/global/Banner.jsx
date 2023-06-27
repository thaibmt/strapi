import React from "react";

export default function Banner() {
  return (
    <header id="header">
      <div className="row">
        <div className="span4">
          <h1>
            <a className="logo" href="index.html">
              <img
                src="/app/assets/img/logo-bootstrap-shoping-cart.png"
                alt="bootstrap sexy shop"
              ></img>
            </a>
          </h1>
        </div>
        <div className="span4">
          <div className="offerNoteWrapper">
            <h1 className="dotmark">
              
              
            </h1>
          </div>
        </div>
        {/* <div className="span4 alignR">
          <span className="btn btn-mini">
            [ 2 ] <span className="icon-shopping-cart" />
          </span>
          <span className="btn btn-warning btn-mini">$</span>
          <span className="btn btn-mini">£</span>
          <span className="btn btn-mini">€</span>
        </div> */}
      </div>
    </header>
  );
}
