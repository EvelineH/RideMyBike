class RenameColumnColorToName < ActiveRecord::Migration[7.0]
  def change
    rename_column :colors, :color, :name
  end
end
