class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.date :start_date
      t.date :end_date
      t.string  :image_url
      t.integer :status, default: 0

      t.timestamps null: false
    end
  end
end
