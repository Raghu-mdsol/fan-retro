class RetrospectivesController < ApplicationController
	def index
		@retrospectives = Retrospective.all
	end

	def new
		 @retrospective = Retrospective.new
		 #redirect_to new_dashboard_retrospective
	end

	def create
		
	end
end
