class CohabitantsFarm < ActiveRecord::Base
  attr_accessible :cohabitant_id, :farm_id

  belongs_to :cohabitant
  belongs_to :farm 
end
