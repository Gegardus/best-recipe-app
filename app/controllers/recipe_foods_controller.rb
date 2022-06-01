class RecipeFoodsController < ApplicationController
  def index
    @puplic_recipe = Recipe.where(public: true).includes(:user)
  end

  def show
    @pupli_recipe_details = Recipe.find_by_id(params[:id])
  end
end
