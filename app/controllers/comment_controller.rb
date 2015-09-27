class CommentController < ApplicationController

	def show
			
	end

	def new
		@comment = Comment.new
		current_user
	end

	def create

	end

	private

	def comment_params
		params.require(:comment).permit(:comment,:date_time,:job_posting_id,:user_id)
	end

	private

  def require_login
    unless current_user
      redirect_to root_url, notice: 'You need to be logged in to post!'
  	end
  end

end
