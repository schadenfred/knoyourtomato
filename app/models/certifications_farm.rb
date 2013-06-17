class CertificationsFarm < ActiveRecord::Base
  attr_accessible :certification_id, :farm_id

  belongs_to :certification
  belongs_to :farm
end
