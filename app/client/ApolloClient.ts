import ApolloClient from "apollo-client";

import { ApolloLink } from "apollo-link";
import { createHttpLink } from "apollo-link-http";
import { InMemoryCache } from "apollo-cache-inmemory";

import fetch from "unfetch";

const GRAPHQL_ENDPOINT = "/graphql";

const httpLink = createHttpLink({
  fetch,
  uri: GRAPHQL_ENDPOINT,
  credentials: "same-origin",
});

export default new ApolloClient({
  link: ApolloLink.from([httpLink]),
  cache: new InMemoryCache(),
});
