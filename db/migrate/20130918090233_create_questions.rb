class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :title
      t.integer :survey_id
      t.integer :category

      t.timestamps
    end
  end
end
