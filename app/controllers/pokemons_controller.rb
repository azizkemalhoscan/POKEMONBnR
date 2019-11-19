class PokemonsController < ApplicationController
  def index
    @pokemons = policy_scope(Pokemon)
    authorize @pokemons
  end

  def show
    @pokemon = Pokemon.find(params[:id])
    authorize @pokemon
  end
end

  def create
    @pokemon = Pokemon.new(pokemon_params)
    authorize @pokemon
    if @pokemon.save
      redirect_to pokemon_path(@pokemon)
    else
      redirect_to root_path
    end
  end