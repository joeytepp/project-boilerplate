import * as React from "react";

import { Query } from "../types";
import Product from "./Product";
import { QueryResult } from "react-apollo";

interface Props extends QueryResult<Query> {}

function ProductList(props: Props) {
  if (props.loading) {
    return <div>Loading...</div>;
  }

  if (props.error) {
    return <div>ERROR!</div>;
  }

  if (props.data.products.length === 0) {
    return <div>No products!</div>;
  }

  return (
    <div>
      {props.data.products.map((product) => (
        <Product {...product}></Product>
      ))}
    </div>
  );
}

export default ProductList;
