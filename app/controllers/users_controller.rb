class UsersController < ApplicationController
  before_action :current_user, only: [:show]

  def index
    @users = User.all
  end

  def show
  end

  private

  def books_params
    params.requir(:user).permit(:name, :bio, :genres)
  end

  def current_user
    @user = User.find(params[:id])
  end
end
