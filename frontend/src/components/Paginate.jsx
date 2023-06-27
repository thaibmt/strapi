import React from "react";
import { Link } from "react-router-dom";

export default function Paginate(props) {
  console.log("aaaa", props);
  var totalPage = props.totalPage;
  var currentPage = parseInt(props.currentPage);
  var basePath = props.basePath;
  var allLi = [];
  var key = 0;
  if (currentPage != 1)
    allLi.push(
      <li key={key++}>
        {" "}
        <Link to={basePath + 1}> First </Link>{" "}
      </li>
    );
  if (currentPage > 1)
    allLi.push(
      <li key={key++}>
        {" "}
        <Link to={basePath+(totalPage-1)}> Previous </Link>{" "}
      </li>
    );
  for (let i = currentPage - 5; i <= currentPage - 1; i++)
    if (i >= 1)
      allLi.push(
        <li key={key++}>
          {" "}
          <Link to={basePath + i}> {i} </Link>{" "}
        </li>
      );
  allLi.push(
    <li key={key++}>
      {" "}
      <Link style={{ color: "red" }} to={basePath + currentPage}>
        {currentPage}
      </Link>
    </li>
  );
  for (let i = 1 + currentPage; i <= 5 + currentPage; i++)
    if (i <= totalPage)
      allLi.push(
        <li key={key++}>
          <Link to={basePath + i}>{i}</Link>{" "}
        </li>
      );
  if (currentPage < totalPage)
    allLi.push(
      <li key={key++}>
        {" "}
        <Link to={basePath + (currentPage + 1)}> Next </Link>{" "}
      </li>
    );
  if (currentPage != totalPage)
    allLi.push(
      <li key={key++}>
        {" "}
        <Link to={basePath + totalPage}> Last </Link>{" "}
      </li>
    );

  return (
    <div>
      <div className="pagination pagination-centered">
        <ul>{allLi}</ul>
      </div>
    </div>
  );
}
