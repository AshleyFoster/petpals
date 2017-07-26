class Pet < ApplicationRecord
  belongs_to :user
  has_attached_file :pic, styles: { larger: "650x220>", medium: "150x98", thumb: "100x100>" }

  validates :name,  presence: true, length: { maximum: 50 }
  validates_attachment_size :pic, less_than: 2.megabyte
  validates_attachment_content_type :pic, content_type: /\Aimage\/.*\z/
end
