class RenameDescripcionToDescription < ActiveRecord::Migration
  def change
    rename_column :works, :descripcion, :description
  end
end
