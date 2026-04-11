# frozen_string_literal: true

module Sunabamail
  class Configuration
    def initialize
      @message_class_name = "SunabamailMessage"
    end

    attr_reader :message_class_name

    def message_class_name=(value)
      @message_class_name = value
    end

    def message_class
      message_class_name.constantize
    end
  end
end
