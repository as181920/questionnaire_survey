require 'spec_helper'

describe "answer_sheets/edit" do
  before(:each) do
    @answer_sheet = assign(:answer_sheet, stub_model(AnswerSheet,
      :survey_id => 1
    ))
  end

  it "renders the edit answer_sheet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", answer_sheet_path(@answer_sheet), "post" do
      assert_select "input#answer_sheet_survey_id[name=?]", "answer_sheet[survey_id]"
    end
  end
end
