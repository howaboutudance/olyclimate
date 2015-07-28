module SessionsHelper
	def current_user
		@current_user = AdminUser.find(session[:AdminUser_id]) if session[:AdminUser_id]
	end
end
