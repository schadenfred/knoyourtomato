require 'spec_helper'

describe CertificationsFarm do
  
  describe "database" do 

		it { should have_db_column(:certification_id).of_type(:integer) }
		it { should have_db_column(:farm_id).of_type(:integer) }
	end

	describe "associations" do

		it { should belong_to(:farm) }
		it { should belong_to(:certification) }
	end
end
