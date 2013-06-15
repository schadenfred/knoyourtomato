require 'spec_helper'

describe User do

	describe "database" do

		describe "columns" do 

			%w[name email encrypted_password reset_password_token 
				current_sign_in_ip last_sign_in_ip].each do |column|

				it { should have_db_column(column.to_sym).of_type(:string) }
			end

			%w[reset_password_sent_at remember_created_at current_sign_in_at 
			last_sign_in_at created_at updated_at].each do |column|

				it { should have_db_column(column.to_sym).of_type(:datetime) }
			end

			it { should have_db_column(:sign_in_count).of_type(:integer) }
		end

		describe "indexes" do 

			%w[email name reset_password_token].each do |index| 
				it { should have_db_index(index.to_sym) }
			end
		end 
	end


end
