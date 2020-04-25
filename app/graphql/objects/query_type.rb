# frozen_string_literal: true

module Objects
  class QueryType < BaseObject
    field :product, resolver: Queries::ProductQuery
    field :products, resolver: Queries::ProductsQuery
  end
end
