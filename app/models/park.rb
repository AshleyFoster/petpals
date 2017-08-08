class Park < ApplicationRecord
  belongs_to :user
  geocoded_by :address

  after_validation :geocode, :if => :address_changed?
  validates :address, presence: true, uniqueness: true
  validates_presence_of :details

  paginates_per 8

  SEARCH_RADIUS = 50
end
