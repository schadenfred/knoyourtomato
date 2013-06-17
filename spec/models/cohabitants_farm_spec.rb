require 'spec_helper'

describe CohabitantsFarm do

	describe "database" do 

		it { should have_db_column(:cohabitant_id).of_type(:integer) }
		it { should have_db_column(:farm_id).of_type(:integer) }
	end

	describe "associations" do

		it { should belong_to(:farm) }
		it { should belong_to(:cohabitant) }
	end
end
