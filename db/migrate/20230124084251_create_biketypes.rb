class CreateBiketypes < ActiveRecord::Migration[7.0]
  def change
    create_table :biketypes do |t|
      t.string :name

      t.timestamps
    end
  end
end
