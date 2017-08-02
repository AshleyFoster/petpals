class Park < ApplicationRecord
  belongs_to :user

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
  validates_presence_of :address
  validates_uniqueness_of :address
  validates_presence_of :details

  paginates_per 8
end
