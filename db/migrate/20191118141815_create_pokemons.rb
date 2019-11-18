class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :hp
      t.string :type
      t.string :attack_name
      t.integer :attack_value
      t.integer :inventory
      t.string :picture
      t.string :region
      t.integer :energy

      t.timestamps
    end
  end
end
