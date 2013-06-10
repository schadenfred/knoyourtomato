require 'spec_helper'

describe "communities/edit" do
  before(:each) do
    @community = assign(:community, stub_model(Community,
      :languages => "MyString",
      :religions => "MyString",
      :description => "MyText",
      :cuisine => "MyString",
      :practices => "MyString",
      :population => "MyString",
      :nearest_town => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit community form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => communities_path(@community), :method => "post" do
      assert_select "input#community_languages", :name => "community[languages]"
      assert_select "input#community_religions", :name => "community[religions]"
      assert_select "textarea#community_description", :name => "community[description]"
      assert_select "input#community_cuisine", :name => "community[cuisine]"
      assert_select "input#community_practices", :name => "community[practices]"
      assert_select "input#community_population", :name => "community[population]"
      assert_select "input#community_nearest_town", :name => "community[nearest_town]"
      assert_select "input#community_name", :name => "community[name]"
    end
  end
end
