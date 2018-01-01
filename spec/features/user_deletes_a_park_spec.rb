require 'rails_helper'

RSpec.feature 'user deletes a park' do
  scenario 'removes the park', js: true do
    user = FactoryGirl.create(:user)
    park = FactoryGirl.create(:park, address: 'Address', user: user)

    login_as(user, :scope => :user)
    visit park_path(park)

    accept_confirm do
      find('.delete').find('.fa-times').click
    end

    expect(page).to have_content 'Park Removed'
    expect(page).not_to have_content('Address')
    puts page.body
  end
end
