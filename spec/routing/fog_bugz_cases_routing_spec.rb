require "rails_helper"

RSpec.describe FogBugzCasesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/fog_bugz_cases").to route_to("fog_bugz_cases#index")
    end

    it "routes to #new" do
      expect(:get => "/fog_bugz_cases/new").to route_to("fog_bugz_cases#new")
    end

    it "routes to #show" do
      expect(:get => "/fog_bugz_cases/1").to route_to("fog_bugz_cases#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/fog_bugz_cases/1/edit").to route_to("fog_bugz_cases#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/fog_bugz_cases").to route_to("fog_bugz_cases#create")
    end

    it "routes to #update" do
      expect(:put => "/fog_bugz_cases/1").to route_to("fog_bugz_cases#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/fog_bugz_cases/1").to route_to("fog_bugz_cases#destroy", :id => "1")
    end

  end
end
