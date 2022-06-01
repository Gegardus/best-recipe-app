class RecipesController < ApplicationController
  def index
    @user = User.find_by_id(params[:user_id])
    @recipes = @user.recipe
  end

  def show
    @recipe = Recipe.find_by_id(params[:id])
  end

  def destroy
    deleted_recipe = Recipe.find_by_id(params[:id])
    deleted_recipe.destroy
    redirect_to user_recipes_url(params[:user_id])
  end
end
