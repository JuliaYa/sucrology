require 'spec_helper'

describe "sugar_bags/show" do
  before(:each) do
    @sugar_bag = assign(:sugar_bag, stub_model(SugarBag))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
