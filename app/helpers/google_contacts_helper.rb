module GoogleContactsHelper
	def loggedin?
		if current_user
			"you are logged in #{current_user[:name]}"
		end
	end
end
