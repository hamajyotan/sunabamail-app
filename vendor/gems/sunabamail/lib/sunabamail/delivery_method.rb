# frozen_string_literal: true

module Sunabamail
  class DeliveryMethod
    def initialize(options = {})
      @message_class = Sunabamail.configuration.message_class
    end

    def deliver!(mail)
      message_class.create!(encoded: mail.encoded)
    end

    private

    attr_reader :message_class
  end
end
