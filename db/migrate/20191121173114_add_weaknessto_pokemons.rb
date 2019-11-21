class AddWeaknesstoPokemons < ActiveRecord::Migration[5.2]
  def change
    add_column :pokemons, :weakness, :string
  end
end
