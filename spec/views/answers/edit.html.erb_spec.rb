require 'spec_helper'

describe "answers/edit" do
  before(:each) do
    @answer = assign(:answer, stub_model(Answer,
      :title => "MyText",
      :question_id => 1,
      :need_comment => false
    ))
  end

  it "renders the edit answer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", answer_path(@answer), "post" do
      assert_select "textarea#answer_title[name=?]", "answer[title]"
      assert_select "input#answer_question_id[name=?]", "answer[question_id]"
      assert_select "input#answer_need_comment[name=?]", "answer[need_comment]"
    end
  end
end
