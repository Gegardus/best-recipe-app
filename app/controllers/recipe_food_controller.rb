class RecipeFoodController < ApplicationController
  def index
    @public_recipe = Recipe.where(public: true).includes(:user)
  end

  def show
    @public_recipe_details = Recipe.find_by_id(params[:id])
  end
end
