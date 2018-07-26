class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.string :name
      t.integer :question_number
      t.integer :duration
      t.string  :image_url

      t.timestamps
    end
  end
end
