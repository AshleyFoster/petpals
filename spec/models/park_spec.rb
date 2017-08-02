require 'rails_helper'

RSpec.describe Park, type: :model do
  it do
    should belong_to(:user)
    should validate_presence_of(:address)
    should validate_uniqueness_of(:address)
    should validate_presence_of(:details)
  end
end
