require 'spec_helper'

describe Image do

	describe "database" do 

		%w[name imageable_type].each do |column|

			it { should have_db_column(column.to_sym).of_type(:string) }
		end

		it { should have_db_column(:imageable_id).of_type(:integer) } 
	end
end