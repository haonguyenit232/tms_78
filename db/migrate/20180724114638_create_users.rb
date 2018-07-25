class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :chatwork_id
      t.integer :role, default: 1
      t.string :avatar

      t.timestamps null:false
    end
  end
end
