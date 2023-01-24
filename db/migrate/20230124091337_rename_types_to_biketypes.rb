class RenameTypesToBiketypes < ActiveRecord::Migration[7.0]
  def change
    rename_table :types, :biketypes
  end
end
