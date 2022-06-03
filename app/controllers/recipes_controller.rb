class RecipesController < ApplicationController
  def index
    @user = User.find_by_id(params[:user_id])
    @recipes = @user.recipes

  end

  def show
    @recipe = Recipe.find_by_id(params[:id])
    @recipe_food_detials = RecipeFood.all.includes(:food, :recipe)
  end

  def new
    @new_recipe = Recipe.new
  end

  def create
    @new_recipe = current_user.recipes.new(recipe_params)
    if @new_recipe.save
      redirect_to user_recipes_path(@new_recipe.user_id)
    else
      render :new
    end
  end

  def destroy
    deleted_recipe = Recipe.find_by_id(params[:id])
    deleted_recipe.destroy
    redirect_to user_recipes_url(params[:user_id])
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public)
  end
end
