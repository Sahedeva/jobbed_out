class JobPostingController < ApplicationController

	def show
		@job = JobPosting.find(params[:id])
	end

	def new
		@job = JobPosting.new
	end

	def create
		@job = JobPosting.new(params[:id])

		if @job.save
			redirect_to @job
		else
			render :new
		end
	end

end
