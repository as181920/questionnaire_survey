require 'spec_helper'

describe "answer_results/new" do
  before(:each) do
    assign(:answer_result, stub_model(AnswerResult,
      :survey_id => 1,
      :question_id => 1,
      :content => ""
    ).as_new_record)
  end

  it "renders new answer_result form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", answer_results_path, "post" do
      assert_select "input#answer_result_survey_id[name=?]", "answer_result[survey_id]"
      assert_select "input#answer_result_question_id[name=?]", "answer_result[question_id]"
      assert_select "input#answer_result_content[name=?]", "answer_result[content]"
    end
  end
end
