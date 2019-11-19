class UserPokemonsController < ApplicationController
  def new
    @userPokemon = UserPokemon.new
    @user = User.find(params[:user_id])
    authorize @userPokemon
  end

  def create
    @userPokemon = UserPokemon.new(user_pokemon_params)
    @user = User.find(params[:user_id])

    authorize @userPokemon

    @userPokemon.user = current_user

    if @userPokemon.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def destroy

  end

  private

  def user_pokemon_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:user_pokemon).permit(:user_id, :pokemon_id, :nickname)
  end
end
