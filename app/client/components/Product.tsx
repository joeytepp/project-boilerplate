import "./Product.css";

import * as React from "react";
import { Product } from "../types";

function Product(props: Product) {
  return (
    <div className="Product-root">
      <h3>{props.name}</h3>
      <img src={props.imgSrc} className="Product-img"></img>
    </div>
  );
}

export default Product;
