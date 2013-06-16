require 'spec_helper'

describe CommunitiesController do

  def valid_attributes
    { "languages" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CommunitiesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all communities as @communities" do
      community = Community.create! valid_attributes
      get :index, {}, valid_session
      assigns(:communities).should eq([community])
    end
  end

  describe "GET show" do
    it "assigns the requested community as @community" do
      community = Community.create! valid_attributes
      get :show, {:id => community.to_param}, valid_session
      assigns(:community).should eq(community)
    end
  end

  describe "GET new" do
    it "assigns a new community as @community" do
      get :new, {}, valid_session
      assigns(:community).should be_a_new(Community)
    end
  end

  describe "GET edit" do
    it "assigns the requested community as @community" do
      community = Community.create! valid_attributes
      get :edit, {:id => community.to_param}, valid_session
      assigns(:community).should eq(community)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Community" do
        expect {
          post :create, {:community => valid_attributes}, valid_session
        }.to change(Community, :count).by(1)
      end

      it "assigns a newly created community as @community" do
        post :create, {:community => valid_attributes}, valid_session
        assigns(:community).should be_a(Community)
        assigns(:community).should be_persisted
      end

      it "redirects to the created community" do
        post :create, {:community => valid_attributes}, valid_session
        response.should redirect_to(Community.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved community as @community" do
        # Trigger the behavior that occurs when invalid params are submitted
        Community.any_instance.stub(:save).and_return(false)
        post :create, {:community => { "languages" => "invalid value" }}, valid_session
        assigns(:community).should be_a_new(Community)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Community.any_instance.stub(:save).and_return(false)
        post :create, {:community => { "languages" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested community" do
        community = Community.create! valid_attributes
        # Assuming there are no other communities in the database, this
        # specifies that the Community created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Community.any_instance.should_receive(:update_attributes).with({ "languages" => "MyString" })
        put :update, {:id => community.to_param, :community => { "languages" => "MyString" }}, valid_session
      end

      it "assigns the requested community as @community" do
        community = Community.create! valid_attributes
        put :update, {:id => community.to_param, :community => valid_attributes}, valid_session
        assigns(:community).should eq(community)
      end

      it "redirects to the community" do
        community = Community.create! valid_attributes
        put :update, {:id => community.to_param, :community => valid_attributes}, valid_session
        response.should redirect_to(community)
      end
    end

    describe "with invalid params" do
      it "assigns the community as @community" do
        community = Community.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Community.any_instance.stub(:save).and_return(false)
        put :update, {:id => community.to_param, :community => { "languages" => "invalid value" }}, valid_session
        assigns(:community).should eq(community)
      end

      it "re-renders the 'edit' template" do
        community = Community.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Community.any_instance.stub(:save).and_return(false)
        put :update, {:id => community.to_param, :community => { "languages" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested community" do
      community = Community.create! valid_attributes
      expect {
        delete :destroy, {:id => community.to_param}, valid_session
      }.to change(Community, :count).by(-1)
    end

    it "redirects to the communities list" do
      community = Community.create! valid_attributes
      delete :destroy, {:id => community.to_param}, valid_session
      response.should redirect_to(communities_url)
    end
  end

end
