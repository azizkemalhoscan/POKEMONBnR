class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def index
    @users = policy_scope(User)
    if params[:sort]
      if params[:sort] == "rank_desc"
        @users = policy_scope(User).sort_by { |u| -u.energy }
      elsif params[:sort] == "rank_asc"
        @users = policy_scope(User).sort_by { |u| u.energy }
      end
    elsif params[:query]
      @users = policy_scope(User).global_search(params[:query])
    end
  end

  def show
    authorize @user
  end

  private

  def set_user
    if current_user
      @user = User.find(params[:id])
    else
      redirect_to landing_path
    end
  end
end
