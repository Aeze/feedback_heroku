FactoryGirl.define do 
  factory :issue do 
    sequence(:name) { |n| "Test Issue#{n}" }
    issue_type "Bug Report"
    sequence(:description) { |n| "This is a pretty simple bug description#{n}" }
  end
end