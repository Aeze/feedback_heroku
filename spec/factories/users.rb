require 'faker'

FactoryGirl.define do 
  factory :user do 
    username { Faker::Internet.user_name }
    email { Faker::Internet.email }
    password 'securepassword'
    password_confirmation 'securepassword'
  end
end
