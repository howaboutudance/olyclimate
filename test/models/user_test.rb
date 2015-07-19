require 'test_helper'

class UserTest < ActiveSupport::TestCase
	def setup
		@user = User.new(email:"user@example.com", discuss: true, alerts: true, news: true)
	end
	
	test "should be valid" do
		assert @user.valid?
	end 
	
	test "email should reject valid addresses" do
		invalid_addresses = %w[user@example,com user_at_foo.org user.name@example. 
													foo@bar_baz.com foo@skitles.ninja info@house.church]
		invalid_addresses.each do |invalid_address|
			@user.email = invalid_address
			assert_not @user.valid?
		end
	end
end
