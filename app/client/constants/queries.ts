import gql from "graphql-tag";

export const PRODUCTS_QUERY = gql`
  query ProductsQuery {
    products {
      name
      color
      imgSrc
    }
  }
`;
