class UsersController < ApplicationController
  before_action :set_user

  def index
    @users = policy_scope(User)
    authorize @users
  end

  def show
    @users = policy_scope(User)
    authorize @users
  end

  private

  def set_user
    if params[:id]
      @user = User.find(params[:id])
    else
      redirect_to landing_path
    end
  end
end
