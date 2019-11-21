class AddEnemyIdColumnToBattles < ActiveRecord::Migration[5.2]
  def change
  	add_column :battles, :enemy_id, :integer
  end
end
