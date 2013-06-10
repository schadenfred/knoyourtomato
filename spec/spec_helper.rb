require 'rubygems'
require 'spork'


Spork.prefork do

  ENV["RAILS_ENV"] ||= 'test'
  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'
  require 'rspec/autorun'
  require 'rspec/given'
  # require 'capybara/rspec'
  require 'capybara/rails'
  require 'factory_girl_rails'
  require 'shoulda-matchers'
  require 'email_spec'
  require 'turnip/capybara'
  # require 'turnip_helper'

  Capybara.javascript_driver = :webkit

  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

  RSpec.configure do |config|
    config.include Devise::TestHelpers, :type => :controller
    config.include Warden::Test::Helpers
    config.include EmailSpec::Helpers
    config.include EmailSpec::Matchers
    config.include FactoryGirl::Syntax::Methods
    config.include Capybara::DSL

    config.mock_with :rspec
    config.fixture_path = "#{::Rails.root}/spec/fixtures"
    config.use_transactional_fixtures = false
    config.infer_base_class_for_anonymous_controllers = true    
    # config.order = "random"
  end
end

Spork.each_run do
  
  FactoryGirl.reload

  Dir["#{Rails.root}/app/controllers//*.rb"].each do |controller|
    load controller
  end
  Dir["#{Rails.root}/app/models//*.rb"].each do |model|
    load model
  end
  Dir["#{Rails.root}/app/workers//*.rb"].each do |worker|
    load worker
  end
  Dir["#{Rails.root}/app/mailers//*.rb"].each do |mailer|
    load mailer
  end
  Dir["#{Rails.root}/lib//*.rb"].each do |lib|
    load lib
  end
end
