class RenameColumnTypeToBiketype < ActiveRecord::Migration[7.0]
  def change
    rename_column :biketypes, :type, :biketype
  end
end
