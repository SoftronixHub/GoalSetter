class HomeController < ApplicationController
	before_action :authenticate_user!, only: [:dashboard]
	def index
	end

	def dashboard
		@goals=current_user.goals
		@goalcount=@goals.count
		 
	end
end