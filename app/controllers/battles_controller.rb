class BattlesController < ApplicationController
  def new
    @battle = Battle.new
    @enemy = User.find(params[:enemy_id])
    authorize @battle
  end

  def create
    @enemy = User.find(params[:battle][:enemy_id])

    @battle = Battle.new(user: current_user, enemy_id: @enemy.id)

    @user = current_user

    authorize @battle

    if @battle.save
      redirect_to battle_path(@battle, pokemon_id: params[:battle][:pokemon_id])
    else
      render :new
    end
  end

  def show
    @battle = Battle.find(params[:id])

    authorize @battle
  end
end
