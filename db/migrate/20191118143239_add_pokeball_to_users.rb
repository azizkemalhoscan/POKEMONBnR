class AddPokeballToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :pokeball, :integer
  end
end
