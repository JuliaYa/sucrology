require 'spec_helper'

describe "SugarBags" do
  describe "GET /sugar_bags" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get sugar_bags_path
      expect(response.status).to be(200)
    end
  end
end
