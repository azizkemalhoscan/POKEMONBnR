class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  # def new
  #   @pokemon = Pokemon.new
  # end

  def show
    @pokemon = Pokemon.find(params[:id])
  end

  # def update
  # end

  # def create
  #   @pokemon = Pokemon.new(pokemon_params)
  #   if @pokemon.save
  #     redirect_to pokemon_path(@pokemon)
  #   else
  # end

  # def destroy
  # end

  private

# Consider need for permit(******)
  def pokemon_params
    params.require(:pokemon).permit(:name)
  end
end
