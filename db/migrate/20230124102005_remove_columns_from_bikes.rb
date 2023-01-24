class RemoveColumnsFromBikes < ActiveRecord::Migration[7.0]
  def change
    remove_column :bikes, :type, :string
    remove_column :bikes, :category, :string
    remove_column :bikes, :color, :string
  end
end
