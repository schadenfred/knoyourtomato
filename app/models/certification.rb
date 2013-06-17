class Certification < ActiveRecord::Base
  
  attr_accessible :description, :name, :url

  has_many :certifications_farms
  has_many :farms, through: :certifications_farms


end
