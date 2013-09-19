# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer_result do
    survey_id 1
    question_id 1
    content ""
  end
end
