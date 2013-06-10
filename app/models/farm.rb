class Farm < ActiveRecord::Base
  attr_accessible :area, :coconut_type, :community_id, :description, :name, :planted_on, :soil_type
end
