require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "subscribe" do
    mail = UserMailer.subscribe(User.first, "user@example.com")
    assert_equal "Subscribe", mail.subject
    assert_match "Hi", mail.body.encoded
  end

  test "account_link" do
    mail = UserMailer.account_link
    assert_equal "Account link", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
