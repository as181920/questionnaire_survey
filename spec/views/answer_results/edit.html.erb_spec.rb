require 'spec_helper'

describe "answer_results/edit" do
  before(:each) do
    @answer_result = assign(:answer_result, stub_model(AnswerResult,
      :survey_id => 1,
      :question_id => 1,
      :content => ""
    ))
  end

  it "renders the edit answer_result form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", answer_result_path(@answer_result), "post" do
      assert_select "input#answer_result_survey_id[name=?]", "answer_result[survey_id]"
      assert_select "input#answer_result_question_id[name=?]", "answer_result[question_id]"
      assert_select "input#answer_result_content[name=?]", "answer_result[content]"
    end
  end
end
