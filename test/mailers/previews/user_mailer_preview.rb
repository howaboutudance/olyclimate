# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/subscribe
  def subscribe
    UserMailer.subscribe(User.first, "mpenhall@gmail.com")
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/account_link
  def account_link
    UserMailer.account_link
  end

end
