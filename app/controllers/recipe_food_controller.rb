class RecipeFoodController < ApplicationController
  def create
    @new_recipe_food = RecipeFood.new
    @new_recipe_food.recipe_id = params[:recipe_id]
    @new_recipe_food.food_id = params[:food_id]
    @new_recipe_food.quantity = params[:quantity]
    @new_recipe_food.save
    redirect_to user_recipe_path(user_id: current_user.id, id: params[:recipe_id])
    flash[:notice] = 'Ingredient added successfully'
  end
end
