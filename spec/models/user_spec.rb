require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    subject { FactoryGirl.build(:user) }

    it do
      should have_many(:pets)
      should have_many(:parks)
    end
  end
end
