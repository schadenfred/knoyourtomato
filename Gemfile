source 'https://rubygems.org'
ruby '1.9.3'

gem 'rails', '3.2.13'
gem 'pg'

gem 'jquery-rails'
gem "thin", ">= 1.5.0"
gem "haml"
gem "bootstrap-sass"
gem "sendgrid", ">= 1.0.1"

# authentication
gem "devise", ">= 2.1.2"
gem 'devise_invitable', '~> 1.1.0'
gem "cancan"
gem "rolify"
gem "simple_form", ">= 2.0.4"
gem "figaro", ">= 0.5.0"
gem 'font-awesome-rails'
gem 'google-webfonts'
gem 'sextant'
gem 'libv8'
gem 'faker'
gem 'kaminari'
gem 'mini_magick'
gem 'carrierwave'
gem 'twitter-bootstrap-markup-rails', '0.3.2.2'
gem 'best_in_place'


group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

group :development do 
  
  gem 'travis-lint'
  gem 'haml-rails'
  gem 'hpricot'
  gem 'ruby_parser'
end

group :test do 
  
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'selenium-webdriver'
  gem 'headless', '0.3.1'
end

group :test, :development do
 
  gem 'factory_girl_rails' 
  gem 'rspec-rails'
  gem "jasminerice" #, :git => 'https://github.com/bradphelan/jasminerice.git' 
  gem 'shoulda-matchers'
  gem 'rspec-given'
  gem 'rb-inotify'
  gem 'debugger'
  gem 'pry'
  gem 'parallel_tests'
  gem 'zeus-parallel_tests'
  gem "therubyracer", ">= 0.11.0", :platform => :ruby, :require => "v8"

  # Guards
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-bundler'
  gem 'guard-livereload'
  gem 'guard-rails'
  gem 'guard-sass', require: false
  gem 'guard-jasmine'
end
