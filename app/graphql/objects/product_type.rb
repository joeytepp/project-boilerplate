# frozen_string_literal: true

module Objects
  class ProductType < BaseObject
    field :name, String, "The name of the product", null: false
    field :color, Enums::ProductColorEnum, "The color of the product.", null: false
    field :img_src, Scalars::Url, "The image source for the product.", null: false
  end
end
