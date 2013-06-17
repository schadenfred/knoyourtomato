require 'spec_helper'

describe Farm do

	describe "database" do

		%w[fruit area soil_type name].each do |column|

			it { should have_db_column(column.to_sym).of_type(:string) }
		end

		%w[community_id planted_on].each do |column|

			it { should have_db_column(column.to_sym).of_type(:integer) }
		end

		it { should have_db_column(:description).of_type(:text) }
	end

	describe "associations" do

		it { should belong_to(:community) }
		it { should have_many(:cohabitants) }
		it { should have_many(:cohabitants).through(:cohabitants_farms) }
		it { should have_many(:certifications_farms) }
		it { should have_many(:positions) }
		it { should have_many(:images) }

	end
end
