# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer do
    title "MyText"
    question_id 1
    need_comment false
  end
end
