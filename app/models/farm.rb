class Farm < ActiveRecord::Base
  attr_accessible :area, :fruit, :community_id, :description, :name, 
  								:planted_on, :soil_type

  belongs_to :community

  has_many :certifications_farms
  has_many :certifications, through: :certifications_farms
  has_many :cohabitants_farms 
  has_many :cohabitants, through: :cohabitants_farms
  has_many :images, as: :imageable
  has_many :positions, as: :positionable
end
