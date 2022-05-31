class FoodsController < ApplicationController
  # protect_from_forgery
  # before_action :authenticate_user!
  # user_signed_in?
  # current_user
  # user_session

  def index
    @foods = Food.all
  end

  def new
    redirect_to foods_path, flash: { alert: 'Please sign up or login!' } unless current_user

    @food = Food.new
  end

  private

  def food_params
    params.require(:food).permit(:name, :measurement_unit, :price)
  end
end
