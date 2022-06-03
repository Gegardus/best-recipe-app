class Recipe < ApplicationRecord
  belongs_to :user , dependent: :destroy
end
