class AddBattlesToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :battles_fought, :integer, default: 0
  	add_column :users, :battles_won, :integer, default: 0
  end
end
