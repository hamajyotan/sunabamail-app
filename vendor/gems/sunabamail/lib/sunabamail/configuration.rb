# frozen_string_literal: true

module Sunabamail
  class Configuration
    def initialize
      @foo = :bar
    end

    attr_reader :foo

    def foo=(value)
      unless value == :bar
        raise ArgumentError, "#foo can only be set to :bar"
      end
      @foo = value
    end
  end
end
