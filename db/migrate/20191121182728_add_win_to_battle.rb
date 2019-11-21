class AddWinToBattle < ActiveRecord::Migration[5.2]
  def change
  	add_column :battles, :win, :boolean, default: false
  end
end
