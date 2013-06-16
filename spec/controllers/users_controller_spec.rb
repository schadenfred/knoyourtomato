require 'spec_helper'

describe UsersController do

  Given(:superadmin) { FactoryGirl.create(:superadmin) }
  Given(:harvester) { FactoryGirl.create(:harvester) }


  When { sign_in superadmin}
  describe "for logged in admin user" do 
    

    describe "GET 'index'" do
      it "returns http success" do

        get 'index'
        response.should be_success
      end
    end

    describe "GET 'show'" do
      it "returns http success" do
        get 'show', { id: harvester.id }
        response.should be_success
      end
    end
  end
end
