require 'spec_helper'

describe "answer_sheets/show" do
  before(:each) do
    @answer_sheet = assign(:answer_sheet, stub_model(AnswerSheet,
      :survey_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
