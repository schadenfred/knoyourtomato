require 'spec_helper'

describe Community do

	describe "columns" do 

		%w[languages religions cuisine practices nearest_town name url].each do |column|

			it { should have_db_column(column.to_sym).of_type(:string) }
		end
	end
end
