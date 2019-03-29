source "https://rubygems.org"

# Allow the rails version to come from an ENV setting so Travis can test multiple versions.
# See http://www.schneems.com/post/50991826838/testing-against-multiple-rails-versions/
rails_version = ENV['RAILS_VERSION'] || '5.1.2'

gem 'rails', "#{rails_version}"

case rails_version.split('.').first
when '3'
  gem 'strong_parameters'
when '4', '5'
  gem 'responders'
end

gem 'sqlite3'

gem 'rswag3-api', path: './rswag3-api'
gem 'rswag3-ui', path: './rswag3-ui'

group :test do
  gem 'test-unit'
  gem 'rspec-rails'
  gem 'generator_spec'
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'rswag3-specs', path: './rswag3-specs'
end

group :assets do
  gem 'uglifier'
  gem 'therubyracer'
end

gem 'byebug'
gem 'puma'
