require 'rails_helper'

describe 'parks/show' do
  context 'user authored park' do
    it 'renders edit and delete links' do
      user = FactoryGirl.create(:user)
      @park = FactoryGirl.create(:park, user: user)

      allow(controller).to receive(:current_user).and_return(user)

      render

      expect(rendered).to include 'Edit'
      expect(rendered).to include 'delete'
    end
  end

  context 'user did not author park' do
    it 'does not render edit and delete links' do
      other_user = FactoryGirl.create(:user)
      @park = FactoryGirl.create(:park, user: other_user)
      user = FactoryGirl.create(:user)

      allow(controller).to receive(:current_user).and_return(user)

      render

      expect(rendered).not_to include 'Edit'
      expect(rendered).not_to include 'delete'
    end
  end
end
