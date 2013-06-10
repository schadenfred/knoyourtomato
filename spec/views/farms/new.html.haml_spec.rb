require 'spec_helper'

describe "farms/new" do
  before(:each) do
    assign(:farm, stub_model(Farm,
      :coconut_type => 1,
      :community_id => 1,
      :area => "MyString",
      :soil_type => "MyString",
      :name => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new farm form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => farms_path, :method => "post" do
      assert_select "input#farm_coconut_type", :name => "farm[coconut_type]"
      assert_select "input#farm_community_id", :name => "farm[community_id]"
      assert_select "input#farm_area", :name => "farm[area]"
      assert_select "input#farm_soil_type", :name => "farm[soil_type]"
      assert_select "input#farm_name", :name => "farm[name]"
      assert_select "textarea#farm_description", :name => "farm[description]"
    end
  end
end
