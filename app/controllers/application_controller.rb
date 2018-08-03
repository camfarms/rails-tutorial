class ApplicationController < ActionController::Base

	def authorize
		if !current_user
			session[:user_id] = nil
			redirect_to log_in_path, notice: "Login pls"
		end
	end

	def current_user
		@current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
	end
end
