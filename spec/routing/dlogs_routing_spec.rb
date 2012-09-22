require "spec_helper"

describe DlogsController do
  describe "routing" do

    it "routes to #index" do
      get("/dlogs").should route_to("dlogs#index")
    end

    it "routes to #new" do
      get("/dlogs/new").should route_to("dlogs#new")
    end

    it "routes to #show" do
      get("/dlogs/1").should route_to("dlogs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dlogs/1/edit").should route_to("dlogs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dlogs").should route_to("dlogs#create")
    end

    it "routes to #update" do
      put("/dlogs/1").should route_to("dlogs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dlogs/1").should route_to("dlogs#destroy", :id => "1")
    end

  end
end
