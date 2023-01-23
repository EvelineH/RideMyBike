class CreateBikes < ActiveRecord::Migration[7.0]
  def change
    create_table :bikes do |t|
      t.string :type
      t.string :category
      t.string :color
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
