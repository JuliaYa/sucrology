require 'spec_helper'

describe "sugar_bags/index" do
  before(:each) do
    assign(:sugar_bags, [
      stub_model(SugarBag),
      stub_model(SugarBag)
    ])
  end

  it "renders a list of sugar_bags" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
