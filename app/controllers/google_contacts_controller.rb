class GoogleContactsController < ApplicationController
	def list
		if current_user
		else
			flash[:warning] = "Please login first"
			redirect_to login_path
		end
	end
end
