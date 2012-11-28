class UserMailer < ActionMailer::Base
  default from: "muneeb.test1@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confiration.subject
  #
  def signup_confirmation(user)
    @user = user

    mail to: @user.email, subject: "sign Up Confirmation"
  end
end
