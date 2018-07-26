class CreateActivities < ActiveRecord::Migration[5.1]
  def change
    create_table :activities do |t|
      t.string :content
      t.integer :target_type
      t.integer :target_id
      t.integer :action_type
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
