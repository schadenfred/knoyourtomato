require 'spec_helper'

describe Cohabitant do

	describe "database" do 

		%w[name description url].each do |column|

			it { should have_db_column(column.to_sym).of_type(:string) }
		end
	end

	describe "associations" do 

		it { should have_many(:farms) }
		it { should have_many(:cohabitants_farms) }
		it { should have_many(:farms).through(:cohabitants_farms) }
		it { should have_many(:communities).through(:farms) }
		it { should have_many(:images) }
	end
end
