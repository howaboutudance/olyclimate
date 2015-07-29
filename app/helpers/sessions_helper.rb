module SessionsHelper
	def current_user
		if session[:AdminUser_id]
			@current_user = AdminUser.find(session[:AdminUser_id]) if session[:AdminUser_id]
		end
	end
end
