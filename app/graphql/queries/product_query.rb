# frozen_string_literal: true

module Queries
  class ProductQuery < BaseQuery
    type Objects::ProductType, null: true

    argument :name, String, "The identifier of the product.", required: true

    description "Returns a product by name."

    def resolve(name:)
      $PRODUCTS.find { |product| product.name === name }
    end
  end
end
