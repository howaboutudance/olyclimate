require 'test_helper'

class UserSignupTest < ActionDispatch::IntegrationTest
	test "invalid signup info" do
		get signup_path 
		assert_no_difference 'User.count' do
			post users_path, user: { email: "",
															news: nil,
															alerts: nil,
															discuss: nil,
														}
		end
		assert_template 'users/new'
	end
end
