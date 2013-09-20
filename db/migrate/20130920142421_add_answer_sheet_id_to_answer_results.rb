class AddAnswerSheetIdToAnswerResults < ActiveRecord::Migration
  def change
    add_column :answer_results, :answer_sheet_id, :integer
  end
end
