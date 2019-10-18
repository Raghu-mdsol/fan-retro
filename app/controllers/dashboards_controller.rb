class DashboardsController < ApplicationController

	def index
		@boards = Board.where(user_id: current_user.id)
	end

	def new
		@board = Board.new

	end

	
	def edit
		@board = Board.find(params[:id])
	end

	def create
		@board = Board.new(board_params)
		if @board.save 
			redirect_to :action => 'index',id: @board
		else 
			flash[:warning] = 'should not be blank.'
#flash[:notice] = "Post successfully created"


#redirect_to dashboards_path, flash: {notice: "Successfully checked in"}
end
end

def show
	@board = Board.find(params[:id])
end

def destroy
	@board = Board.find(params[:id])
	@board.destroy

	redirect_to dashboards_path
end


def update
	@board = Board.find(params[:id])
  #if @board.update(board_params)
  @board.update(name: params[:board][:name], description: params[:board][:description])
  redirect_to dashboards_path(@board)
end

private
def board_params
	params.require(:board).permit(:name, :description).merge(user_id: current_user.id)
end




end