require 'spec_helper'

describe FarmCertification do

	describe "database" do

		%w[farm_id certification_id].each do |column|

			it { should have_db_column(column.to_sym).of_type(:integer) }
		end
	end
end
