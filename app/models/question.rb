class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :answers, dependent: :destroy
  accepts_nested_attributes_for :answers, reject_if: proc {|it| it[:title].blank? }, allow_destroy: true

  validates_presence_of :title
end