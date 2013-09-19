require 'spec_helper'

describe "answer_sheets/index" do
  before(:each) do
    assign(:answer_sheets, [
      stub_model(AnswerSheet,
        :survey_id => 1
      ),
      stub_model(AnswerSheet,
        :survey_id => 1
      )
    ])
  end

  it "renders a list of answer_sheets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
