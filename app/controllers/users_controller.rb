class UsersController < ApplicationController
  before_action :set_user

  def index
    @users = policy_scope(User)
    if params[:sort]
      if params[:sort] == "rank_desc"
        @users = policy_scope(User).sort_by { |u| -u.energy }
      elsif params[:sort] == "rank_asc"
        @users = policy_scope(User).sort_by { |u| u.energy }
      end
    end
    # authorize @users
  end

  def show
    @users = policy_scope(User)
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
end
