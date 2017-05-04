class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :name, presence: true
      t.datetime :birthday
      t.string :sex
      t.string :breed
      t.text :description

      t.timestamps
    end
  end
end
