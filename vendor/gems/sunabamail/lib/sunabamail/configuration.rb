# frozen_string_literal: true

module Sunabamail
  class Configuration
    def initialize
      @message_class_name = "SunabamailMessage"
      @use_turbo = false
      @attachment_strategy = :inline
    end

    attr_reader :message_class_name
    attr_reader :attachment_strategy
    attr_accessor :use_turbo

    def message_class_name=(value)
      @message_class_name = value
      @message_class = nil
    end

    def message_class
      @message_class ||= message_class_name.constantize
    end

    def attachment_strategy=(value)
      @attachment_strategy = value.to_s.to_sym.presence_in(attachment_strategies) || :inline
    end

    private

    def attachment_strategies = %i[inline]
  end
end
