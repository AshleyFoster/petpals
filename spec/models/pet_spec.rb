require 'rails_helper'

RSpec.describe Pet, type: :model do
  context 'validations' do
    subject { FactoryGirl.build(:pet) }

    it do
      should belong_to(:user)
      should validate_presence_of(:name)
      should have_attached_file(:pic)
      should validate_attachment_content_type(:pic).
        allowing('image/png', 'image/gif', 'image/jpg').
        rejecting('text/plain', 'text/xml')
      should validate_attachment_size(:pic).
        less_than(2.megabytes)
    end
  end
end
