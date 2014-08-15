require 'faker'

namespace :db do 
  task :populate => :environment do 

  25.times do 
    password2 = 'temppassword123'
    user = User.new(
      username: Faker::Internet.user_name,
      email: Faker::Internet.email, 
      password: password2,
      password_confirmation: password2)

    user.save!
  end

  50.times do |issue|
    issue = Issue.new(
      name: Faker::Lorem.sentence,
      issue_type: 'Bug Report',
      description: Faker::Lorem.paragraph)

    issue.save!
  end

  50.times do |issue|
    issue = Issue.new(
      name: Faker::Lorem.sentence,
      issue_type: 'Feature Request',
      description: Faker::Lorem.paragraph)

    issue.save!
  end

  issues = Issue.all
  users = User.all 

  issues.each do |issue|
    users.each do |user|
      if (rand(3) > 1)
        issue.liked_by user
      end
    end
  end

  10.times do |post|
    post = Post.new(
      name: Faker::Lorem.sentence,
      content: Faker::Lorem.paragraph(rand(7)+1))

    post.save!
  end


end 
end