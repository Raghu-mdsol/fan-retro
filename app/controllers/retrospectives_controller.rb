class RetrospectivesController < ApplicationController
	def index
		@retrospective = Retrospective.all

	end

	def new
		# @retrospective = Retrospective.new
	end

	def create
		# if true
			#redirect_to dashboard_retrospectives_path(:dashboard_id => Board.first.id)
			#redirect_to new_dashboard_retrospective

		# if @retrospective.save 
		# 	redirect_to new_dashboard_retrospective


		end
	end
