class AnswerSheet < ActiveRecord::Base
  belongs_to :survey
  has_many :answer_results, dependent: :destroy
  accepts_nested_attributes_for :answer_results, reject_if: proc {|it| it[:content].blank? }, allow_destroy: true

  validates_presence_of :survey_id
end
