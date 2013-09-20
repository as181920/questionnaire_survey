class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :answers, dependent: :destroy
  accepts_nested_attributes_for :answers, reject_if: proc {|it| it[:title].blank? }, allow_destroy: true

  has_many :answer_results, dependent: :destroy

  validates_presence_of :title

  #CategoriesForSelect = [["单选题",1],["多选题",2],["问答题",3]]
  CategoriesForSelect = [["单选题",1],["多选题",2]]

  def category_name
    Hash[CategoriesForSelect].key category
  end
end
