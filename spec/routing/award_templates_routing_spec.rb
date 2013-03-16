require "spec_helper"

describe AwardTemplatesController do
  describe "routing" do

    it "routes to #index" do
      get("/award_templates").should route_to("award_templates#index")
    end

    it "routes to #new" do
      get("/award_templates/new").should route_to("award_templates#new")
    end

    it "routes to #show" do
      get("/award_templates/1").should route_to("award_templates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/award_templates/1/edit").should route_to("award_templates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/award_templates").should route_to("award_templates#create")
    end

    it "routes to #update" do
      put("/award_templates/1").should route_to("award_templates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/award_templates/1").should route_to("award_templates#destroy", :id => "1")
    end

  end
end
