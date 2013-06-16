require 'spec_helper'

describe FarmsController do

  # DatabaseCleaner.clean

  Given(:farm) { FactoryGirl.create(:farm) }

  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all farms as @farms" do
      farm
      get :index, {}, valid_session
      assigns(:farms).should eq([farm])
    end
  end

  describe "GET show" do
    it "assigns the requested farm as @farm" do
      farm
      get :show, {:id => farm.to_param}, valid_session
      assigns(:farm).should eq(farm)
    end
  end

  describe "GET new" do
    it "assigns a new farm as @farm" do
      get :new, {}, valid_session
      assigns(:farm).should be_a_new(Farm)
    end
  end

  describe "GET edit" do
    it "assigns the requested farm as @farm" do
      farm
      get :edit, {:id => farm.to_param}, valid_session
      assigns(:farm).should eq(farm)
    end
  end

  # describe "POST create" do
  #   describe "with valid params" do
  #     it "creates a new Farm" do
  #       expect {
  #         post :create, {:farm => valid_attributes}, valid_session
  #       }.to change(Farm, :count).by(1)
  #     end

  #     it "assigns a newly created farm as @farm" do
  #       post :create, {:farm => valid_attributes}, valid_session
  #       assigns(:farm).should be_a(Farm)
  #       assigns(:farm).should be_persisted
  #     end

  #     it "redirects to the created farm" do
  #       post :create, {:farm => valid_attributes}, valid_session
  #       response.should redirect_to(Farm.last)
  #     end
  #   end

  #   describe "with invalid params" do
  #     it "assigns a newly created but unsaved farm as @farm" do
  #       # Trigger the behavior that occurs when invalid params are submitted
  #       Farm.any_instance.stub(:save).and_return(false)
  #       post :create, {:farm => { "fruit" => "invalid value" }}, valid_session
  #       assigns(:farm).should be_a_new(Farm)
  #     end

  #     it "re-renders the 'new' template" do
  #       # Trigger the behavior that occurs when invalid params are submitted
  #       Farm.any_instance.stub(:save).and_return(false)
  #       post :create, {:farm => { "coconut_type" => "invalid value" }}, valid_session
  #       response.should render_template("new")
  #     end
  #   end
  # end

  # describe "PUT update" do
  #   describe "with valid params" do
  #     it "updates the requested farm" do
  #       farm = Farm.create! valid_attributes
  #       # Assuming there are no other farms in the database, this
  #       # specifies that the Farm created on the previous line
  #       # receives the :update_attributes message with whatever params are
  #       # submitted in the request.
  #       Farm.any_instance.should_receive(:update_attributes).with({ "coconut_type" => "1" })
  #       put :update, {:id => farm.to_param, :farm => { "coconut_type" => "1" }}, valid_session
  #     end

  #     it "assigns the requested farm as @farm" do
  #       farm = Farm.create! valid_attributes
  #       put :update, {:id => farm.to_param, :farm => valid_attributes}, valid_session
  #       assigns(:farm).should eq(farm)
  #     end

  #     it "redirects to the farm" do
  #       farm = Farm.create! valid_attributes
  #       put :update, {:id => farm.to_param, :farm => valid_attributes}, valid_session
  #       response.should redirect_to(farm)
  #     end
  #   end

  #   describe "with invalid params" do
  #     it "assigns the farm as @farm" do
  #       farm = Farm.create! valid_attributes
  #       # Trigger the behavior that occurs when invalid params are submitted
  #       Farm.any_instance.stub(:save).and_return(false)
  #       put :update, {:id => farm.to_param, :farm => { "coconut_type" => "invalid value" }}, valid_session
  #       assigns(:farm).should eq(farm)
  #     end

  #     it "re-renders the 'edit' template" do
  #       farm = Farm.create! valid_attributes
  #       # Trigger the behavior that occurs when invalid params are submitted
  #       Farm.any_instance.stub(:save).and_return(false)
  #       put :update, {:id => farm.to_param, :farm => { "coconut_type" => "invalid value" }}, valid_session
  #       response.should render_template("edit")
  #     end
  #   end
  # end

  # describe "DELETE destroy" do
  #   it "destroys the requested farm" do
  #     farm = Farm.create! valid_attributes
  #     expect {
  #       delete :destroy, {:id => farm.to_param}, valid_session
  #     }.to change(Farm, :count).by(-1)
  #   end

  #   it "redirects to the farms list" do
  #     farm = Farm.create! valid_attributes
  #     delete :destroy, {:id => farm.to_param}, valid_session
  #     response.should redirect_to(farms_url)
  #   end
  # end

end
