class RenameColumnBiketypeToName < ActiveRecord::Migration[7.0]
  def change
    rename_column :biketypes, :biketype, :name
  end
end
