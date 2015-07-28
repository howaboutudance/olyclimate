require 'test_helper'

class UserLoginTest < ActionDispatch::IntegrationTest
	test "test flash persistance" do
		get login_path
		assert_template 'sessions/new'
		post login_path, session: { email: "", password: "" }
		assert_template 'sessions/new'
		assert_not flash.empty?
	end
end
