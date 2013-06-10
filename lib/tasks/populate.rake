require 'rubygems'
require 'faker'

Dir[Rails.root.join("lib/sample_data/*.rb")].each {|f| require f}

include FarmData
 
def colorize(text, color_code)
 "\e[#{color_code}m#{text}\e[0m"
end

def red(text);      colorize(text, 31); end
def green(text);    colorize(text, 32); end
def yellow(text);   colorize(text, 33); end
def purple(text);   colorize(text, 34); end
def magenta(text);  colorize(text, 35); end
def cyan(text);     colorize(text, 36); end

namespace :db do
  desc "Fill database with sample data" 
  task populate: :environment do
    # if Rails.env.development?
      puts "#{red("==>")} Clearing Current Data"
      Rake::Task['db:reset'].invoke
    # end
    # puts "#{green("==>")} Making sample users"
    # make_users
    # puts "#{green("==>")} Making user roles"
    # make_user_roles
    # puts "#{green("==>")} Making admin user"
    # make_admin_user
    # ["hola.nicole@gmail.com"].each do |email|
    #   puts "#{green("==>")} Making #{email}"
    #   make_user(email)
    # end
    puts "#{green("==>")} Making farms"
    make_farms    
    puts "#{green("==>")} Making communities"
    # make_wines
    puts "#{green("==>")} Making cohabitants"
    # make_reviews
    puts "#{green("==>")} Making certifications"
    # make_producers  
    puts "#{green("==>")} Making farm_certifications"
    # make_ownerships
    puts "#{green("==>")} Making positions"
    # make_winemaker_oeuvres
  end
end

def make_users

  99.times do |n|
    name = Faker::Name.name 
    email = Faker::Internet.email
    password  = "password"
    user = User.new(name: name,
                    :email => email,
                    :password => password)  
    user.save!
  end
end

def make_farms

  farm_names.each do |farm|
    Winery.create(
      name: winery_name, 
      producer_id: rand(1..20)
    )
  end
end
