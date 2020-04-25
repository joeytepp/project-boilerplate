# frozen_string_literal: true

module Objects
  class MutationType < BaseObject
    field :product_create, resolver: Mutations::ProductCreateMutation
    field :product_update, resolver: Mutations::ProductUpdateMutation
  end
end
