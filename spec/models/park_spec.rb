require 'rails_helper'

RSpec.describe Park, type: :model do
  context 'validations' do
    user = FactoryGirl.build(:user)
    subject {
      FactoryGirl.build(
        :park,
        address: 'Boston Common',
        details: 'details',
        user: user
      )
    }

    it do
      should belong_to(:user)
      should validate_presence_of(:address)
      should validate_presence_of(:details)
    end

    it 'validates uniqueness of address, lat and long' do
      Park.new(
        address: 'Boston Common',
        details: 'details',
        user: user
      ) .save!(validate: 'false')

      should validate_uniqueness_of(:address)
    end
  end
end
