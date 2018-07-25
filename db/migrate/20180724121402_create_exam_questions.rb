class CreateExamQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :exam_questions do |t|
      t.text :content
      t.boolean :is_correct
      t.references :exam, foreign_key: true
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
