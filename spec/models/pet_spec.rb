require 'rails_helper'

RSpec.describe Pet, type: :model do
  context 'validations' do
    subject { FactoryGirl.build(:pet) }

    it do
      should belong_to(:user)
      should validate_presence_of(:name)
      should validate_uniqueness_of(:name)
    end
  end
end
