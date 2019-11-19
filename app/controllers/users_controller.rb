class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = policy_scope(User)
    authorize @users
  end

  def show
    # @pokemons = @user.pokemons ###TODO
    authorize @user
  end

  private

  def set_user
    if params[:id]
      @user = User.find(params[:id])
    else
      redirect_to landing_path
    end
  end

  # Choose what to include in user_params if you need to
  def user_params
    params.require(:user).permit(:some_attributes)
  end
end
