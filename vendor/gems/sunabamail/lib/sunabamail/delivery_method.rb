# frozen_string_literal: true

module Sunabamail
  class DeliveryMethod
    def initialize(options = {})
    end

    def deliver!(mail)
      Sunabamail::Message.create!(encoded: mail.encoded)
    end
  end
end
