class IdeasController < ApplicationController
	def index
		@ideas = Idea.all 
	end	
	def create
		@ideas = Idea.create(idea_params)
		if @ideas.valid?
			#implemeant later
		else
			#implement later
		end		
		redirect_to root_path

	end	
	def edit
		@ideas = Idea.find(params[:id])
	end	
	def update
		@ideas = Idea.find(params[:id])
		if @ideas.update(idea_params)
			redirect_to root_path
		else
			redirect_to edit_idea_path
		end		
	end	
	def destroy
		@ideas = Idea.find(params[:id])
		@ideas.destroy
		redirect_to root_path
	end		
	private
	def idea_params
		params.require(:idea).permit(:description,:author)

	end	
	
end
