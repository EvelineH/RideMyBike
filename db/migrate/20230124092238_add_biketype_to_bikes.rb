class AddBiketypeToBikes < ActiveRecord::Migration[7.0]
  def change
    add_reference :bikes, :biketype, null: false, foreign_key: true
  end
end
