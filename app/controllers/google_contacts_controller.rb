class GoogleContactsController < ApplicationController
	def list
		if current_user
		else
			flash[:alert] = "Please login first"
			redirect_to login_path
		end
	end
end
