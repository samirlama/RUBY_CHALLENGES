class IdeasController < ApplicationController
	def index
		@ideas = idea.all
	end	
end
