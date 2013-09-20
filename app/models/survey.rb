class Survey < ActiveRecord::Base
  has_many :questions, dependent: :destroy
  accepts_nested_attributes_for :questions, allow_destroy: true, reject_if: proc {|it| it[:title].blank? }

  has_many :answer_sheets, dependent: :destroy
  has_many :answer_results, through: :answer_sheets

  validates_presence_of :name
end
