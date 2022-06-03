class RecipeFood < ApplicationRecord
  belongs_to :food , dependent: :destroy
  belongs_to :recipe, dependent: :destroy
end
