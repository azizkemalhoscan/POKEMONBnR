class RemoveExtraFields < ActiveRecord::Migration[5.2]
  def change
  	remove_column :pokemons, :inventory
  	remove_column :pokemons, :energy
  	remove_column :pokemons, :region

  	remove_column :user_pokemons, :nickname

  	remove_column :users, :energy
  	remove_column :users, :pokeball
  end
end
