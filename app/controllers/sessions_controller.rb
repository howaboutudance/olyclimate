class SessionsController < ApplicationController
	helper_method :current_user
  def new
  end
	def create
		user = AdminUser.from_omniauth(env['omniauth.auth'])
		session[:user_id] = user.id
		redirect_to login_path
	end
	def destory
		session[:user_id] = nil
		redirect_to login_path
	end
	def current_user
		@current_user ||= AdminUser.find(session[:user_id]) if session[:user_id]
	end
end
