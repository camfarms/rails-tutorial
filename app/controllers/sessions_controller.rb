class SessionsController < ApplicationController
	def new
		if current_user
			redirect_to home_path
		end
	end

	def create
		user = User.authenticate(params[:email], params[:password])
		if user
			session[:user_id] = user.id
			redirect_to home_path, :notice => "Yay!"
		else
			flash.now.alert = "Boo!"
			render "new"
		end
	end

	def destroy 
		session[:user_id] = nil
		redirect_to log_in_path, :notice => "Logged out!"
	end

end
