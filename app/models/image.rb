class Image < ActiveRecord::Base
  attr_accessible :name, :imageable_id, :imageable_type
end
