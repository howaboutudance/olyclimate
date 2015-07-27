ENV['MAILGUN_KEY']

class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.subscribe.subject
  #
  def subscribe(user, to_address)
		@user = user

    mail from: @user.email, to: to_address, subject: 'Subscribe', text: ""
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
