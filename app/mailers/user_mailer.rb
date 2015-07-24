class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.subscribe.subject
  #
  def subscribe(user)
		@user = user
    @greeting = "Hi"

    mail from: @user.email, to: 'mpenhall@gmail.com', subject: 'Subscribe'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_link.subject
  #
  def account_link
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
