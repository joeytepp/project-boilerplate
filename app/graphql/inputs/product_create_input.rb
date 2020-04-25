# frozen_string_literal: true

module Inputs
  class ProductCreateInput < BaseInputObject
    argument :name, String, "The name of the product.", required: true
    argument :color, Enums::ProductColorEnum, "The color of the product.", required: true
    argument :img_src, Scalars::Url, "The image source of the product.", required: true
  end
end
