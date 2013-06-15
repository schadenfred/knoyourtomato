class Farm < ActiveRecord::Base
  attr_accessible :area, :fruit, :community_id, :description, :name, :planted_on, :soil_type

  belongs_to :community 
end
