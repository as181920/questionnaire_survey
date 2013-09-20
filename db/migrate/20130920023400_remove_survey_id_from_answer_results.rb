class RemoveSurveyIdFromAnswerResults < ActiveRecord::Migration
  def up
    remove_column :answer_results, :survey_id
  end

  def down
    add_column :answer_results, :survey_id, :integer
  end
end
