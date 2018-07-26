class CreateCourseSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :course_subjects do |t|
      t.references :course, index: true, foreign_key: true
      t.references :subject, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
