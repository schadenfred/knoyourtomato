require 'spec_helper'

describe Position do
  
	describe "database" do 

		%w[user_id farm_id].each do |column|

			it { should have_db_column(column.to_sym).of_type(:integer) }
		end
		
		it { should have_db_column(:title).of_type(:string) }
		it { should have_db_column(:tenured_since).of_type(:date) }
	end
end
