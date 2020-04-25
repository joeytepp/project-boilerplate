# frozen_string_literal: true

module Inputs
  class ProductUpdateInput < BaseInputObject
    argument :name, String, "The name of the product.", required: false
    argument :color, Enums::ProductColorEnum, "The color of the product.", required: false
    argument :img_src, Scalars::Url, "The image source of the product.", required: false
  end
end
