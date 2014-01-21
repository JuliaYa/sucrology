require "spec_helper"

describe SugarBagsController do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/sugar_bags").to route_to("sugar_bags#index")
    end

    it "routes to #new" do
      expect(:get => "/sugar_bags/new").to route_to("sugar_bags#new")
    end

    it "routes to #show" do
      expect(:get => "/sugar_bags/1").to route_to("sugar_bags#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/sugar_bags/1/edit").to route_to("sugar_bags#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/sugar_bags").to route_to("sugar_bags#create")
    end

    it "routes to #update" do
      expect(:put => "/sugar_bags/1").to route_to("sugar_bags#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/sugar_bags/1").to route_to("sugar_bags#destroy", :id => "1")
    end

  end
end
