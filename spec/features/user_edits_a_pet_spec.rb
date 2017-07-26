require 'rails_helper'

RSpec.feature "user edits a pet" do
  scenario "updates a pet's info for the user" do
    user = FactoryGirl.create(:user)
    pet = FactoryGirl.create(:pet, name: "Rover", user: user)

    login_as(user, :scope => :user)
    visit pet_path(pet)

    click_link 'Edit'
    fill_in 'pet_name', with: 'Rova'
    click_button 'Update Pet'

    expect(page).to have_content 'Pet Updated'
    expect(page).to have_content 'Rova'
    expect(page).not_to have_content('Rover')
  end
end
