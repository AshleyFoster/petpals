class AddIndexToLatAndLong < ActiveRecord::Migration[5.2]
  def change
    add_index :parks, [:latitude, :longitude]
  end
end
