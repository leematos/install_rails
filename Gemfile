source 'https://rubygems.org'
ruby "2.0.0"

gem 'rails', '4.0.0'

group :development do
  gem "better_errors"
  gem "binding_of_caller"
end

group :production do
  gem 'rails_12factor'
end

gem 'sass-rails', '~> 4.0.0'
gem 'bootstrap-sass', github: 'thomas-mcdonald/bootstrap-sass', branch: '3'
gem "font-awesome-rails"
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'mongoid', git: 'https://github.com/mongoid/mongoid.git'
gem 'wicked'
gem 'unicorn'
gem 'figaro'

group :development, :test do
  gem 'rspec-rails', '2.13.1'
  # The following optional lines are part of the advanced setup.
  gem 'guard-rspec', '2.5.0'
  gem 'spork-rails', '4.0.0'
  gem 'guard-spork', '1.5.0'
end

group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.1.0'
  gem 'factory_girl_rails', '4.2.0'
  gem 'cucumber-rails', '1.3.0', :require => false
  gem 'database_cleaner', github: 'bmabey/database_cleaner'
end
