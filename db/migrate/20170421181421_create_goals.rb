class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.string :title
      t.text :description
      t.date :deadline
      t.integer :user_id

      t.timestamps
    end
  end
end
