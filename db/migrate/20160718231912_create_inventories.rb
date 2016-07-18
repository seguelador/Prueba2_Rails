class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.integer :serial, null: false
      t.integer :wheel
      t.text :description
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :inventories, :serial, unique: true
  end
end
