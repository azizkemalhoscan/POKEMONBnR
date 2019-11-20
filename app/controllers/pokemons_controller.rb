class PokemonsController < ApplicationController


  def index
    @pokemons = policy_scope(Pokemon).paginate(page: params[:page]).per_page(10)
    authorize @pokemons
  end

  def show
    @pokemon = Pokemon.find(params[:id])
    authorize @pokemon
  end
end
