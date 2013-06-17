require 'spec_helper'

describe Certification do

	describe "database" do

		%w[name description url].each do |column|

			it { should have_db_column(column.to_sym).of_type(:string) }
		end
	end

	describe "associations" do 

		it { should have_many(:certifications_farms) }
		it { should have_many(:farms).through(:certifications_farms) }
	end
end
