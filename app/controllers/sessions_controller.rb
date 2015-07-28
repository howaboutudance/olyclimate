class SessionsController < ApplicationController
  def new
  end
	def create
		user = AdminUser.from_omniauth(env['omniauth.auth'])
		session[:AdminUser_id] = user.id
		redirect_to login_path
	end
	def destroy
		session[:AdminUser_id] = nil
		redirect_to login_path
	end
end
