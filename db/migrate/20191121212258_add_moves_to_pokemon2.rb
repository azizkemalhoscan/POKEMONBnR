class AddMovesToPokemon2 < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :moves, :text
  end
end
