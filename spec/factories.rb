FactoryGirl.define do
  sequence :email do |n|
    "email#{n}@factory.com"
  end

  factory :pet do
    name "Rover"
  end

  factory :user do
    email
    password "password"
    password_confirmation "password"
  end
end
