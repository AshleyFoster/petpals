FactoryGirl.define do
  sequence :email do |n|
    "email#{n}@factory.com"
  end

  factory :park do
    address "New York"
    latitude 40.7143528
    longitude -74.0059731
    details "Concrete jungle"
  end

  factory :user do
    email
    password "password"
    password_confirmation "password"
  end

  factory :pet do
    name "Rover"
    sex "M"
    breed "Golden Retriever"
    description "Rover is a cutie."
    pic { File.new("#{Rails.root}/app/assets/images/petpals.jpg") }
    user
  end
end
