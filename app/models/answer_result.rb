class AnswerResult < ActiveRecord::Base
  belongs_to :answer_result
  
  validates_presence_of :question_id, :survey_id, :content
end
