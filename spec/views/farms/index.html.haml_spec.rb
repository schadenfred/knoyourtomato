require 'spec_helper'

describe "farms/index" do
  before(:each) do
    assign(:farms, [
      stub_model(Farm,
        :coconut_type => 1,
        :community_id => 2,
        :area => "Area",
        :soil_type => "Soil Type",
        :name => "Name",
        :description => "MyText"
      ),
      stub_model(Farm,
        :coconut_type => 1,
        :community_id => 2,
        :area => "Area",
        :soil_type => "Soil Type",
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of farms" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Area".to_s, :count => 2
    assert_select "tr>td", :text => "Soil Type".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
