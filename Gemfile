source 'https://rubygems.org'
gem 'rails', '4.2.5.2'
gem 'pg', '~> 0.15'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
# gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'bower-rails'
gem 'angular-rails-templates'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'slim-rails'
gem 'gon'
gem 'responders', '~> 2.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development


group :test do
  # gem 'minitest-rails'
  # gem 'minitest-rails-capybara'
  gem 'poltergeist'
  # gem 'shoulda-context'
  # gem 'shoulda-matchers', '~> 3.1.1', require: false
  # gem 'minitest-reporters', '~> 1.1.8'
  gem 'capybara-angular'
end

gem 'sass', '3.2.19'
group :development, :test  do
  gem 'teaspoon-jasmine'
  gem 'ffaker'
  gem 'pry-rails', '0.3.4'
  gem 'pry-byebug', '3.3.0'
  gem 'rails_best_practices'
  gem 'rubocop', require: false
  gem 'brakeman'
  gem 'awesome_print'
  # gem 'rack-mini-profiler'
  gem 'simplecov', require: false
  gem 'rspec-rails', '~>3.0'
  gem 'factory_girl_rails', '~> 4.0'
  gem 'capybara'
  gem 'database_cleaner'
  # gem 'selenium-webdriver'
end

gem 'foreman'
group :production, :staging do
  gem 'rails_12factor'
  gem 'rails_stdout_logging'
  gem 'rails_serve_static_assets'
end
