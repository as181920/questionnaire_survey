class CreateAnswerResults < ActiveRecord::Migration
  def change
    execute "CREATE EXTENSION IF NOT EXISTS hstore"
    create_table :answer_results do |t|
      t.integer :survey_id
      t.integer :question_id
      t.hstore :content

      t.timestamps
    end
  end
end
