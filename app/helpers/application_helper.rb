module ApplicationHelper
	def calculate_percentage(goal)
		total_milestones = goal.milestones.count
		return 0.0 if total_milestones == 0
		completed_milestone = goal.milestones.where(completed: true).count
		percentage_completed = (completed_milestone * 100.0 )/ total_milestones
	end
end
