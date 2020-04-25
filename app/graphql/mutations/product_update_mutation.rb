# frozen_string_literal: true

module Mutations
  class ProductUpdateMutation < BaseMutation
    type Objects::ProductType

    description "Updates a product by name"

    argument :name, String, "The name of the product to be updated.", required: true
    argument :input, Inputs::ProductUpdateInput, "The attributes of the product to be updated.", required: true

    def resolve(name:, input:)
      product = $PRODUCTS.find { |p| p.name === name }
      product = OpenStruct.new(product.to_h.merge(input.to_h))

      product
    end
  end
end
