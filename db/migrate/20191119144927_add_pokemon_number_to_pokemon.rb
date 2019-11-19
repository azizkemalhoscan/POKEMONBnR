class AddPokemonNumberToPokemon < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :pokemon_number, :string
  end
end
