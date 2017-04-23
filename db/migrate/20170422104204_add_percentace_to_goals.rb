class AddPercentaceToGoals < ActiveRecord::Migration[5.0]
  def change
    add_column :goals, :percentage, :float
  end
end
