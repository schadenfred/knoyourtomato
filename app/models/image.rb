class Image < ActiveRecord::Base
  attr_accessible :image, :name, :imageable_id, :imageable_type

  belongs_to :imageable, polymorphic: true

  mount_uploader :image, ImageUploader

end
