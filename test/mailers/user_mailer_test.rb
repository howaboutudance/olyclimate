require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "subscribe" do
    mail = UserMailer.subscribe(User.first, "user@example.com")
    assert_equal "Subscribe", mail.subject
    assert_match "", mail.body.encoded
  end
end
