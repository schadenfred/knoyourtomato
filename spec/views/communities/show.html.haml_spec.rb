require 'spec_helper'

describe "communities/show" do
  before(:each) do
    @community = assign(:community, stub_model(Community,
      :languages => "Languages",
      :religions => "Religions",
      :description => "MyText",
      :cuisine => "Cuisine",
      :practices => "Practices",
      :population => "Population",
      :nearest_town => "Nearest Town",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Languages/)
    rendered.should match(/Religions/)
    rendered.should match(/MyText/)
    rendered.should match(/Cuisine/)
    rendered.should match(/Practices/)
    rendered.should match(/Population/)
    rendered.should match(/Nearest Town/)
    rendered.should match(/Name/)
  end
end
