require 'rails_helper'

RSpec.feature 'user deletes a pet' do
  scenario 'removes a pet for the user', js: true do
    user = FactoryGirl.create(:user)
    pet = FactoryGirl.create(:pet, name: 'Rover', user: user)

    login_as(user, :scope => :user)
    visit pet_path(pet)

    accept_confirm do
      find('.delete').find('.fa-times').click
    end

    expect(page).to have_content 'Pet Removed'
    expect(page).not_to have_content('Rover')
  end
end
