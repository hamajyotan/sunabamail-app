# frozen_string_literal: true

module Sunabamail
  class Configuration
    def initialize
      @message_class_name = "SunabamailMessage"
      @use_turbo = false
    end

    attr_reader :message_class_name
    attr_accessor :use_turbo

    def message_class_name=(value)
      @message_class_name = value
      @message_class = nil
    end

    def message_class
      @message_class ||= message_class_name.constantize
    end
  end
end
