require 'spec_helper'

describe "farms/edit" do
  before(:each) do
    @farm = assign(:farm, stub_model(Farm,
      :coconut_type => 1,
      :community_id => 1,
      :area => "MyString",
      :soil_type => "MyString",
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit farm form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => farms_path(@farm), :method => "post" do
      assert_select "input#farm_coconut_type", :name => "farm[coconut_type]"
      assert_select "input#farm_community_id", :name => "farm[community_id]"
      assert_select "input#farm_area", :name => "farm[area]"
      assert_select "input#farm_soil_type", :name => "farm[soil_type]"
      assert_select "input#farm_name", :name => "farm[name]"
      assert_select "textarea#farm_description", :name => "farm[description]"
    end
  end
end
