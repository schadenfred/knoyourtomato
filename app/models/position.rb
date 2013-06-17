class Position < ActiveRecord::Base
  attr_accessible :tenured_since, :title, :user_id

  belongs_to :user
  belongs_to :positionable, polymorphic: true
end
