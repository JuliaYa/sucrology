require 'spec_helper'

describe "sugar_bags/new" do
  before(:each) do
    assign(:sugar_bag, stub_model(SugarBag).as_new_record)
  end

  it "renders new sugar_bag form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sugar_bags_path, "post" do
    end
  end
end
