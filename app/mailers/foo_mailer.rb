class FooMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.foo_mailer.bar.subject
  #
  def bar
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
