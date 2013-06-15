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
    if Rails.env.development?
      puts "#{red("==>")} Clearing Current Data"
      Rake::Task['db:reset'].invoke
    end
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
    make_communities
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

  farm_names.each do |farm_name|
    Farm.create(
      name: farm_name, 
      community_id: "1",
      planted_on: rand(1955..1995),
      area: rand(20..500),
      soil_type: "high organic",
      description: farm_descriptions.sample
    )
  end
end

def make_communities
  Community.create!(
    languages: "Phu Thai, Phuan, Shan",
    religions: "Buddhism, Islam, Christianity",
    description: "The city is located at the junction of the Chao Phraya, 
      Lopburi and Pa Sak rivers, and on the main north-south railway linking
      Chiang Mai to Bangkok. The old city is on an island formed by a bend of
      the Chao Phraya on the west and south sides, the Pa Sak on the east side 
      and the Klong Muang canal on the northern side. It is estimated that 
      Ayutthaya by the year 1600 CE had a population of about 300,000, with 
      the population perhaps reaching 1,000,000 around 1700 CE, making it one 
      of the world's largest cities at that time.[3] In 1767, the city was 
      destroyed by the Burmese army, resulting in the collapse of the 
      kingdom.",
    nearest_town: "Ayutthay",
    name: "Phetchabun Mountains"
  )
end



