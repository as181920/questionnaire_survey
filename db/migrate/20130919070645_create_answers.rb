class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :title
      t.integer :question_id
      t.boolean :need_comment, default: false

      t.timestamps
    end
  end
end
