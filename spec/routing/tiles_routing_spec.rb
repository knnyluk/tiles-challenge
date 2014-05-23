require "spec_helper"

describe TilesController do
  describe "routing" do

    it "routes to #index" do
      get("/tiles").should route_to("tiles#index")
    end

    it "routes to #new" do
      get("/tiles/new").should route_to("tiles#new")
    end

    it "routes to #show" do
      get("/tiles/1").should route_to("tiles#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tiles/1/edit").should route_to("tiles#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tiles").should route_to("tiles#create")
    end

    it "routes to #update" do
      put("/tiles/1").should route_to("tiles#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tiles/1").should route_to("tiles#destroy", :id => "1")
    end

  end
end
