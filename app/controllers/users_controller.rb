class UsersController < ApplicationController
  before_action :authenticate_user!
  def index; end

  def show
    @user = User.find_by_id(current_user.id)
  end
end
