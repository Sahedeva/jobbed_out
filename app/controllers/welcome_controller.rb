class WelcomeController < ApplicationController
	def index
		@users = User.all 
		@postings = JobPosting.all
		@comments = Comment.all
	end


end
