require 'spec_helper'

describe "sugar_bags/edit" do
  before(:each) do
    @sugar_bag = assign(:sugar_bag, stub_model(SugarBag))
  end

  it "renders the edit sugar_bag form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sugar_bag_path(@sugar_bag), "post" do
    end
  end
end
