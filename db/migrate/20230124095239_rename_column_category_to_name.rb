class RenameColumnCategoryToName < ActiveRecord::Migration[7.0]
  def change
    rename_column :categories, :category, :name
  end
end