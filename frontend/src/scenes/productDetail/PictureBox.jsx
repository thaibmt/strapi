import React from "react";
import AppUrl from "../../API/AppUrl";

export default function PictureBox(props) {
  var images = props.images;
  var myView = images.map((img, key) => {
    if (key == 0)
      return (
        <div className="item active">
          <a href="#st">
            <img
              src={AppUrl.ImageURL+img.attributes.url}
              alt="thom"
              style={{ width: "100%" }}
            />
          </a>
        </div>
      );
    else
      return (
        <div className="item">
          <a href="#st">
            <img
              src={AppUrl.ImageURL+img.attributes.url}
              alt="thom"
              style={{ width: "100%" }}
            />
          </a>
        </div>
      );
  });
  return (
    <div id="myCarousel" className="carousel slide cntr">
      <div className="carousel-inner">
        {/* {myView} */}
        <div className="item">
          <a href="#st">
            <img
              src="/app/assets/img/a.jpg"
              alt="thom"
              style={{ width: "100%" }}
            />
          </a>
        </div>
        <div className="item">
          <a href="#st">
            <img
              src="/app/assets/img/b.jpg"
              alt="thom"
              style={{ width: "100%" }}
            />
          </a>
        </div>
        <div className="item active">
          <a href="#st">
            <img
              src="/app/assets/img/e.jpg"
              alt="thom"
              style={{ width: "100%" }}
            />
          </a>
        </div>
      </div>
      <a className="left carousel-control" href="#myCarousel" data-slide="prev">
        ‹
      </a>
      <a
        className="right carousel-control"
        href="#myCarousel"
        data-slide="next"
      >
        ›
      </a>
    </div>
  );
}
