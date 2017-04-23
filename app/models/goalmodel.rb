class GoalModel
	attr_accessor :id, :title, :deadline, :status

	def initialize
	end

	def calculate
		return self.MileStone.count
	end
end