source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.4'

# For deploying on Heroku
gem 'rails_12factor', group: :production

# Use sqlite3 in development, postgres in production (for Heroku)
group :development do 
 gem 'sqlite3'
end

group :production do 
  gem 'pg'
end

# Use kube as css framework
gem 'kube-rails'
gem 'angularjs-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
gem 'therubyracer',  platforms: :ruby

gem 'faker', '~> 1.1.2'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

# User authentication
gem 'devise'

# Global settings
gem "rails-settings-cached", "0.4.1"
gem 'rails-settings-ui'

#Votes
gem 'acts_as_votable'

#Comments
gem 'commontator'

#App Server
gem 'unicorn', group: :production


#Testing
group :development, :test do 
  gem 'rspec-rails', '~> 2.14.0'
  gem 'factory_girl_rails', '~> 4.2.1'
end

group :test do 
  gem 'capybara', '~> 2.1.0'
  gem 'database_cleaner', '~> 1.0.1'
  gem 'launchy', '~> 2.3.0'
  gem 'selenium-webdriver', '~> 2.39.0'
end

