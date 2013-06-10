require 'spec_helper'

describe "communities/index" do
  before(:each) do
    assign(:communities, [
      stub_model(Community,
        :languages => "Languages",
        :religions => "Religions",
        :description => "MyText",
        :cuisine => "Cuisine",
        :practices => "Practices",
        :population => "Population",
        :nearest_town => "Nearest Town",
        :name => "Name"
      ),
      stub_model(Community,
        :languages => "Languages",
        :religions => "Religions",
        :description => "MyText",
        :cuisine => "Cuisine",
        :practices => "Practices",
        :population => "Population",
        :nearest_town => "Nearest Town",
        :name => "Name"
      )
    ])
  end

  it "renders a list of communities" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Languages".to_s, :count => 2
    assert_select "tr>td", :text => "Religions".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Cuisine".to_s, :count => 2
    assert_select "tr>td", :text => "Practices".to_s, :count => 2
    assert_select "tr>td", :text => "Population".to_s, :count => 2
    assert_select "tr>td", :text => "Nearest Town".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
