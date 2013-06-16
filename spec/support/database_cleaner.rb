RSpec.configure do |config|

  config.before(:suite) do
    DeferredGarbageCollection.start  
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end

  config.after(:all) do
    DatabaseCleaner.clean
    DeferredGarbageCollection.reconsider
  end 

  config.before type: :request do
    DatabaseCleaner.strategy = :truncation
  end

  config.after type: :request do 
    DatabaseCleaner.strategy = :transaction
  end

  config.before do
    DatabaseCleaner.start
    ActionMailer::Base.deliveries.clear
  end 

  config.after do 
    DatabaseCleaner.clean
  end
end