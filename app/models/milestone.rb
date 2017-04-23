class Milestone < ApplicationRecord
	belongs_to :goal, class_name: 'Goal', foreign_key: 'goal_id'
end
