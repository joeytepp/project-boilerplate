# frozen_string_literal: true

module Objects
  class BaseObject < GraphQL::Schema::Object
    field_class Fields::BaseField
  end
end
