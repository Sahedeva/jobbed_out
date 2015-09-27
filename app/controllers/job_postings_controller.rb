class JobPostingsController < ApplicationController
	
before_filter :require_login

	def show
		@job = JobPosting.find(params[:id])
	end

	def new
		@job = JobPosting.new
		current_user
	end

	def create
		@job = JobPosting.new(job_params)
		@job.user_id = current_user.id
		@job.date_time = Time.now
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

private

  def require_login
    unless current_user
      redirect_to root_url, notice: 'You need to be logged in to post!'
    end
  end
end
