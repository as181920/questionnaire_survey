require "spec_helper"

describe AnswerSheetsController do
  describe "routing" do

    it "routes to #index" do
      get("/answer_sheets").should route_to("answer_sheets#index")
    end

    it "routes to #new" do
      get("/answer_sheets/new").should route_to("answer_sheets#new")
    end

    it "routes to #show" do
      get("/answer_sheets/1").should route_to("answer_sheets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/answer_sheets/1/edit").should route_to("answer_sheets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/answer_sheets").should route_to("answer_sheets#create")
    end

    it "routes to #update" do
      put("/answer_sheets/1").should route_to("answer_sheets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/answer_sheets/1").should route_to("answer_sheets#destroy", :id => "1")
    end

  end
end
