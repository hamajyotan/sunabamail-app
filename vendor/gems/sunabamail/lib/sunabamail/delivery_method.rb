# frozen_string_literal: true

module Sunabamail
  class DeliveryMethod
    def initialize(options = {})
      options[:storage] ||= Sunabamail.configuration.storage
      @settings = options
    end

    def deliver!(mail)
      Sunabamail::Message.create!(encoded: mail.encoded)
    end

    private

    attr_reader :settings
  end
end
