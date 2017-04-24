class HomeController < ApplicationController
	
	def index
	end

	def dashboard
		@goals=current_user.goals
		@goalcount=@goals.count
		 
	end
end