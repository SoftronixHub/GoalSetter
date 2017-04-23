class CreateMilestones < ActiveRecord::Migration[5.0]
  def change
    create_table :milestones do |t|
      t.string :title
      t.boolean :completed
      t.integer :goal_id

      t.timestamps
    end
  end
end
