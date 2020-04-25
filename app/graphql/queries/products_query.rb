# frozen_string_literal: true

module Queries
  class ProductsQuery < BaseQuery
    type [Objects::ProductType], null: false

    description "Returns all products."

    def resolve
      $PRODUCTS
    end
  end
end
