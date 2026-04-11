class UserMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.bar.subject
  #
  def signup_requested(to)
    @greeting = "Hi"

    mail subject: "ほげ", to:
  end
end
