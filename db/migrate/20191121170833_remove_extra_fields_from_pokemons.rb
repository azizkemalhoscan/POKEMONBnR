class RemoveExtraFieldsFromPokemons < ActiveRecord::Migration[5.2]
  def change
    remove_column :pokemons, :attack_name
    remove_column :pokemons, :attack_value
  end
end
