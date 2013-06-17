class Community < ActiveRecord::Base
  attr_accessible :cuisine, :description, :languages, :name, :nearest_town, :population, :practices, :religions

  has_many :farms
  has_many :images, as: :imageable
  has_many :cohabitants, through: :farms
end
