class CreateParks < ActiveRecord::Migration[5.1]
  def change
    create_table :parks do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.text :details

      t.timestamps
    end
  end
end
