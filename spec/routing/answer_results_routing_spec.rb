require "spec_helper"

describe AnswerResultsController do
  describe "routing" do

    it "routes to #index" do
      get("/answer_results").should route_to("answer_results#index")
    end

    it "routes to #new" do
      get("/answer_results/new").should route_to("answer_results#new")
    end

    it "routes to #show" do
      get("/answer_results/1").should route_to("answer_results#show", :id => "1")
    end

    it "routes to #edit" do
      get("/answer_results/1/edit").should route_to("answer_results#edit", :id => "1")
    end

    it "routes to #create" do
      post("/answer_results").should route_to("answer_results#create")
    end

    it "routes to #update" do
      put("/answer_results/1").should route_to("answer_results#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/answer_results/1").should route_to("answer_results#destroy", :id => "1")
    end

  end
end
