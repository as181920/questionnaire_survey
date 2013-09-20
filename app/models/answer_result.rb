class AnswerResult < ActiveRecord::Base
  belongs_to :answer_sheet

  belongs_to :question
  
  validates_presence_of :question_id, :content
end
