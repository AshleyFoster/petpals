require 'rails_helper'

RSpec.feature "user creates a pet" do
  scenario "creates a pet for the user" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)

    visit new_pet_path

    fill_in 'pet_name', with: 'Rover'
    fill_in 'Breed', with: 'Golden Retriever'
    select('M', from: 'Sex')
    fill_in 'Description', with: 'Rover is the fluffiest!'
    page.attach_file('pet_pic', Rails.root + 'app/assets/images/petpals.jpg')
    click_button 'Create Pet'

    expect(page).to have_content 'Your pet has been added!'
    expect(page).to have_content 'Edit'
    expect(page).to have_content 'Rover'
    expect(page).to have_content 'M'
    expect(page).to have_content 'Golden Retriever'
    expect(page).to have_content 'Rover is the fluffiest!'
    expect(page).to_not have_css('img', text: 'petpal.jpg')
  end
end
