module ApplicationHelper
	def calculate_percentage(goal)
		total_milestones = goal.milestones.count
		return 0.0 if total_milestones == 0
		completed_milestone = goal.milestones.where(completed: true).count
		percentage_completed = ((completed_milestone * 100.0 )/ total_milestones)
    return number_with_precision(percentage_completed, precision: 2)
	end

	def getlatestgoals()
     Goal.all.order(created_at: :desc).take(3)
	end

    def getlatestmilestones()
     Milestone.all.order(created_at: :desc).take(5)
	end
	  
	def getlatestnotes()
     Note.all.order(created_at: :desc).take(2)
	end

end
