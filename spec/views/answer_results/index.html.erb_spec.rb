require 'spec_helper'

describe "answer_results/index" do
  before(:each) do
    assign(:answer_results, [
      stub_model(AnswerResult,
        :survey_id => 1,
        :question_id => 2,
        :content => ""
      ),
      stub_model(AnswerResult,
        :survey_id => 1,
        :question_id => 2,
        :content => ""
      )
    ])
  end

  it "renders a list of answer_results" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
