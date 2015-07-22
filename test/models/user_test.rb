require 'test_helper'

class UserTest < ActiveSupport::TestCase
	def setup
		@user = User.new(email:"user@example.com", discuss: true, alerts: true, news: true)
	end
	
	test "should be valid" do
		assert @user.valid?
	end 
	test "email should not be blank" do
		@user.email = "   "
		assert_not @user.valid?, "blank email should be invalid"	
	end
	test "discuss should be present" do
		@user.discuss = nil
		assert_not @user.valid?, "discuss is nil, thus invalid"
	end
	test "alerts should be present" do
		@user.alerts = nil
		assert_not @user.valid?, "alerts is nil thus invalid"
	end
	test "news should be present" do
		@user.news = nil
		assert_not @user.valid?, "news is nil thus invalid"
	end
	test "checkbox can be false but not nil" do
		@user.news = false 
		@user.alerts = false
		@user.discuss = false
		assert @user.valid?
	end
	test "email should reject valid addresses" do
		invalid_addresses = %w[user@example,com user_at_foo.org user.name@example. 
													foo@bar_baz.com foo#skitles.ninja info@house,church
													user@evergreen..edu]
		invalid_addresses.each do |invalid_address|
			@user.email = invalid_address
			assert_not @user.valid?, "#{invalid_address} should be invalid"
		end
	end
	test "email should be unique" do
		dup_user = @user.dup
		@user.save
		assert_not dup_user.valid?, "duplicae is invalid"
	end
	test "email should be unique & insenstive" do
		dup_user = @user.dup
		dup_user.email = @user.email.upcase
		@user.save
		assert_not dup_user.valid?, " case insenstive duplicate is invalid"
	end
	test "email addresses should be saved as lower-case" do
		mixed_case_email = "Foo@alumni.EvErGREEN.eDu"
		@user.email = mixed_case_email
		@user.save
		assert_equal mixed_case_email.downcase, @user.reload.email
	end
end
