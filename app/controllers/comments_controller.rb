class CommentsController < ApplicationController

before_filter :require_login

	def show
			@comment = Comment.find(params[:id])
			@users = User.all
			@postings = JobPosting.all
	end

	def new
		@comment = Comment.new
		@users = User.all 
		@postings = JobPosting.all
		@comments = Comment.all
		current_user
	end

	def create
		@comment = Comment.new(comment_params)
		@comment.user_id = current_user.id
		@comment.date_time = Time.now
		if @comment.save
			redirect_to @comment
		else
			render :new
		end
	end

	private

	def comment_params
		params.require(:comment).permit(:comment,:date_time,:user_id,:job_posting_id)
	end

	private

  def require_login
    unless current_user
      redirect_to root_url, notice: 'You need to be logged in to post!'
  	end
  end
end
