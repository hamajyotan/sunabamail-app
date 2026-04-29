# frozen_string_literal: true

module Sunabamail
  class DeliveryMethod
    def initialize(options = {})
    end

    def deliver!(mail)
      sender = mail.from.one? ? mail.from.first : mail.sender
      subject = mail.subject
      timestamp = mail.date

      message = Sunabamail::Message.new(sender:, subject:, created_at: timestamp, updated_at: timestamp)
      message.build_raw(encoded: mail.encoded)
      message.save!
    end
  end
end
