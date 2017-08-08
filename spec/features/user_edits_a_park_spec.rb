require 'rails_helper'

RSpec.feature "user edits a park" do
  scenario "updates a park that was created by the user" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    park = FactoryGirl.create(
      :park,
      address: 'Boston Common',
      details: 'foobar',
      latitude: 42.3550,
      longitude: 71.0655,
      user: user
    )

    visit park_path(park)

    click_link 'Edit'
    fill_in 'Details', with: 'New details'
    click_button 'Update Park'

    expect(page).to have_content 'Park Updated'
    expect(page).to have_content 'New details'
    expect(page).not_to have_content('foobar')
  end
end
