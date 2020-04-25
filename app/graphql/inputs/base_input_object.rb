# frozen_string_literal: true

module Inputs
  class BaseInputObject < GraphQL::Schema::InputObject
    argument_class Arguments::BaseArgument
  end
end
