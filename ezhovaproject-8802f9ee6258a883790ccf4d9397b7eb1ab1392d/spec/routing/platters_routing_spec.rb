require "rails_helper"

RSpec.describe PlattersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/platters").to route_to("platters#index")
    end

    it "routes to #new" do
      expect(:get => "/platters/new").to route_to("platters#new")
    end

    it "routes to #show" do
      expect(:get => "/platters/1").to route_to("platters#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/platters/1/edit").to route_to("platters#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/platters").to route_to("platters#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/platters/1").to route_to("platters#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/platters/1").to route_to("platters#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/platters/1").to route_to("platters#destroy", :id => "1")
    end

  end
end
