class StaticPagesController < ApplicationController
	def new
	end
	def error 
		@web_admin_address = ENV['WEB_ADMIN_EMAIL']
	end
end
