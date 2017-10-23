class StaticPagesController < ApplicationController
	def about
	end
	def random
		@ideas = Idea.order("RANDOM()").first
	end	
end
