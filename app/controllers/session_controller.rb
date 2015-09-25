class SessionController < ApplicationController

	#login
	def new

	end

	#login
	def create

		if login(params[:email], params[:password]) 
			redirect_back_or_to '/'
		else
			render :new
		end
	end

	#logout
	def destroy
		logout
		redirect_to '/'
	end

end
