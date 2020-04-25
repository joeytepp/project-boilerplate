import * as React from "react";
import { ApolloProvider } from "react-apollo";

import client from "../ApolloClient";

import Button from "../components/Button";
import ProductsContainer from "../containers/ProductsContainer";

interface Props {
  message: string;
}

function Hello(props: Props) {
  return (
    <div>
      <ApolloProvider client={client}>
        <h1>Hello</h1>
        <ProductsContainer></ProductsContainer>
        <Button color="blue" onClick={() => alert(props.message)}>
          Hello
        </Button>
      </ApolloProvider>
    </div>
  );
}

export default Hello;
