require 'spec_helper'

describe "answer_sheets/new" do
  before(:each) do
    assign(:answer_sheet, stub_model(AnswerSheet,
      :survey_id => 1
    ).as_new_record)
  end

  it "renders new answer_sheet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", answer_sheets_path, "post" do
      assert_select "input#answer_sheet_survey_id[name=?]", "answer_sheet[survey_id]"
    end
  end
end
