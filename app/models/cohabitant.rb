class Cohabitant < ActiveRecord::Base
  attr_accessible :description, :name, :url

  has_many :cohabitants_farms
  has_many :farms, through: :cohabitants_farms
  has_many :communities, through: :farms
  has_many :images, as: :imageable
end
