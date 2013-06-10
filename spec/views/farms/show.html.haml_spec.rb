require 'spec_helper'

describe "farms/show" do
  before(:each) do
    @farm = assign(:farm, stub_model(Farm,
      :coconut_type => 1,
      :community_id => 2,
      :area => "Area",
      :soil_type => "Soil Type",
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Area/)
    rendered.should match(/Soil Type/)
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
  end
end
