class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :pokemons, :pokemon_number, :number

  end
end
