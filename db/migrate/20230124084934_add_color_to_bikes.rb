class AddColorToBikes < ActiveRecord::Migration[7.0]
  def change
    add_reference :bikes, :color, null: false, foreign_key: true
  end
end
