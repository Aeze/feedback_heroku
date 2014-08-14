# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    name "MyString"
    content "MyText"
    admin_id 1
    date_posted "2014-08-14"
  end
end
