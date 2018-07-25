class CreateExams < ActiveRecord::Migration[5.1]
  def change
    create_table :exams do |t|
      t.integer :status
      t.datetime :started_at
      t.integer :spent_time
      t.integer :score
      t.references :user, foreign_key: true
      t.references :subject, foreign_key: true

      t.timestamps null:false
    end
  end
end
