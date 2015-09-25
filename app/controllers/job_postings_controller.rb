class JobPostingsController < ApplicationController
	def show
		@job = JobPosting.find(params[:id])
	end

	def new
		@job = JobPosting.new
	end

	def create
		@job = JobPosting.new(job_params)

		if @job.save
			redirect_to @job
		else
			render :new
		end
	end

	private

	def job_params
		params.require(:job_posting).permit(:company_name,:job_title,:posting_url,:user_id)
	end
end
