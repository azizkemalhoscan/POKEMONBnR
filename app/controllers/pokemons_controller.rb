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
