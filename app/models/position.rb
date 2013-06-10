class Position < ActiveRecord::Base
  attr_accessible :farm_id, :tenured_since, :title, :user_id
end
