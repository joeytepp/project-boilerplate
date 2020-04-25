# frozen_string_literal: true

module Interfaces
  module BaseInterface
    include GraphQL::Schema::Interface

    field_class Fields::BaseField
  end
end
