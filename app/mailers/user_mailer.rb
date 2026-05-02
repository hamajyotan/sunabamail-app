class UserMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.bar.subject
  #
  def signup_requested(user_registration)
    @user_registration = user_registration
    to = [user_registration.email, "moemoe@example.com", "ほげ太郎 <hogetaro@example.com>"]

    @greeting = "Hi"

    if user_registration.file
      attachments['file.png'] = user_registration.file.read
    end

    addresses = %w[foo bar baz qux].map { "#{it}@example.com" }
    addresses << "ほげ太郎 <hoge@example.com>"

    from = addresses
    # sender = addresses
    # reply_to = addresses
    to = addresses
    # cc = addresses
    bcc = ["moe@example.com"]

    # mail(subject: "ほげ", from:, sender:, reply_to:, to:, cc:, bcc:)
    ret = mail(subject: "ほげ", from:, to:, bcc:)
    ret
  end

  def hoge
    subject = "うぇうぇｗ(｀･ω･´)ゞほげ"
    from = %w[foo bar baz qux quux].sample.then { "#{it}@example.com" }
    to = %w[foo bar baz qux].sample.then { "#{it}@example.com" }
    cc = %w[foo bar baz qux].sample.then { "#{it}@example.com" }
    bcc = %w[foo bar baz qux].sample.then { "#{it}@example.com" }

    mail subject: "うぇうぇｗ(｀･ω･´)ゞほげ", from:, to:, cc:, bcc:
  end
end
