class SessionsController < ApplicationController
  def new
  end
	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user&&user.authenticate(params[:session][:password])
			#TODO: fill in section with login logic
		else
			flash[:danger] = 'Invalid email/password combination'
			render 'new'
		end
	end
	def destory
	end
end
