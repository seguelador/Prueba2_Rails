class AddInventoryToUser < ActiveRecord::Migration
  def change
    add_reference :users, :inventory, index: true, foreign_key: true
  end
end
