# frozen_string_literal: true

module Mutations
  class ProductCreateMutation < BaseMutation
    type Objects::ProductType

    description "Creates a new product"

    argument :input, Inputs::ProductCreateInput, required: true

    def resolve(input:)
      product = OpenStruct.new(input.to_h)

      $PRODUCTS.push(product)

      product.to_h
    end
  end
end
