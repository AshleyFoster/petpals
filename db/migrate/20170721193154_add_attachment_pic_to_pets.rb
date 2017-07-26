class AddAttachmentPicToPets < ActiveRecord::Migration[5.1]
  def self.up
    change_table :pets do |t|
      t.attachment :pic
    end
  end

  def self.down
    remove_attachment :pets, :pic
  end
end
