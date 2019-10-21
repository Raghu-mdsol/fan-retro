class RetrospectivesController < ApplicationController
	def index
		@retrospectives = Retrospective.all
		@board_name = Board.where(id: params[:dashboard_id]).name
	end

	def new
		@retrospective = Retrospective.new
	end

	def create
		@retrospective = Retrospective.new(create_params)
		@retrospective.save!
		@board_name = Board.where(id: create_params[:board_id]).name
		@retrospectives = Retrospective.where(board_id: create_params[:board_id])
	end

	

private

def create_params
	params.require(:retrospectives).permit(:postive, :negative, :improvements, :board_id)
end
end
