class CreateParks < ActiveRecord::Migration[5.1]
  def change
    create_table :parks do |t|
      t.string :address, null: false
      t.float :latitude, null: false
      t.float :longitude, null: false
      t.text :details, null: false

      t.timestamps
    end
  end
end
