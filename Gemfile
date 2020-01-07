# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.4'
gem 'rails', '~> 5.2.3'
gem 'activesupport', '~> 5.2.4.1'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'bootstrap', '~> 4.3.1'
gem 'bootstrap-will_paginate', '1.0.0'
gem 'coffee-rails', '~> 4.2'
gem 'devise', '~> 4.7', '>= 4.7.1'
gem 'faker', '~> 1.6', '>= 1.6.6'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.5'
gem 'font-awesome-sass', '~> 5.11.2'
gem 'hirb'
gem 'jbuilder', '~> 2.5'
gem 'omniauth-facebook', '~> 5.0'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'rack', '~> 2.0', '>= 2.0.8'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.30.0'
  # gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  # gem 'chromedriver-helper'
  gem 'webdrivers', '~> 4.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
