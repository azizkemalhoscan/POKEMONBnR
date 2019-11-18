class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

  def update
    @user.update(user_params)
  end

  def destroy
    @user.destroy
    redirect_to user_path
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
#Choose what to include in user_params if you need to
  def user_params
    params.require(:user).permit(:some_attributes)
  end
end
