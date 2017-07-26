FactoryGirl.define do
  sequence :email do |n|
    "email#{n}@factory.com"
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
