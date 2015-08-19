require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end
	test "delete model passes" do
		get :delete
		assert_response :success
	end

end
