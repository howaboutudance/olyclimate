require 'test_helper'

class DeleteOnControllerDestroysUserTest < ActionDispatch::IntegrationTest
	test "test that delete from controller delete from Users" do
		get :delete
		assert_nil User.find_by email: "user1@example.com"
	end
	
end
