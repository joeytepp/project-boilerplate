import * as React from "react";
import { Query } from "react-apollo";

import { PRODUCTS_QUERY } from "../constants";
import { Query as QueryType } from "../types";

import ProductList from "../components/ProductList";

function ProductsContainer() {
  return (
    <Query<QueryType> query={PRODUCTS_QUERY}>
      {(props) => {
        return <ProductList {...props}></ProductList>;
      }}
    </Query>
  );
}

export default ProductsContainer;
