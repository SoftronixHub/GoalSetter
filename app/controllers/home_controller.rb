class HomeController < ApplicationController
	before_action :authenticate_user!, only: [:dashboard]
	def index
	end

	def dashboard
		@goals=current_user.goals
		@goalcount=@goals.count
		@milestonecount=0
		@notecount=0
		@goals.each do |g|
			@notecount=@notecount+g.notes.count
			@milestonecount=@milestonecount+g.milestones.count
		end
		 
	end
end