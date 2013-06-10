class Community < ActiveRecord::Base
  attr_accessible :cuisine, :description, :languages, :name, :nearest_town, :population, :practices, :religions
end
