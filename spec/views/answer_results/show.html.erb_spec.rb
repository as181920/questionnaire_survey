require 'spec_helper'

describe "answer_results/show" do
  before(:each) do
    @answer_result = assign(:answer_result, stub_model(AnswerResult,
      :survey_id => 1,
      :question_id => 2,
      :content => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(//)
  end
end
