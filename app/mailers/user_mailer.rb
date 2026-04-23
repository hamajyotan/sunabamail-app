class UserMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.bar.subject
  #
  def signup_requested(user_registration)
    @user_registration = user_registration
    to = user_registration.email

    @greeting = "Hi"

    if user_registration.file
      attachments['file.png'] = user_registration.file.read
    end

    mail subject: "ほげ", to:
  end
end
