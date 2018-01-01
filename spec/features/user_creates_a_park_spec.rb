require 'rails_helper'

RSpec.feature 'user creates a park' do
  scenario 'adds a new park' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)

    visit parks_path

    fill_in 'search', with: 'Boston'
    click_button 'Search Near'

    expect(page).to have_content 'No parks have been added yet!'

    click_link 'Add a park!'

    fill_in 'Address', with: 'Boston Common'
    fill_in 'Details', with: 'details'
    click_button 'Create Park'

    expect(page).to have_content 'This park has been added!'
    expect(page).to have_content 'Boston Common'
  end
end
