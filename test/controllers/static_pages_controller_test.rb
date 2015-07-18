require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should get home" do
		get :home
		assert_response :success
		assert_select "title" ,"Email Sign-up | Olympic Climate Action | Local citizens concerned about climate change"
	end
end
