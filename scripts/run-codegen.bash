#!/usr/bin/env bash

set -e

cd "${0%/*}/.."

echo "Dumping graphql schema"
rails graphql:schema:dump

echo "Running graphql code gen"
yarn run codegen