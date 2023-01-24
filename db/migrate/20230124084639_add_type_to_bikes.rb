class AddTypeToBikes < ActiveRecord::Migration[7.0]
  def change
    add_reference :bikes, :type, null: false, foreign_key: true
  end
end
