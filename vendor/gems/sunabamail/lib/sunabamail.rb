# frozen_string_literal: true

require_relative "sunabamail/version"

require_relative "sunabamail/configuration"
require_relative "sunabamail/delivery_method"

module Sunabamail
  class Error < StandardError; end

  def self.configuration
    @configuration ||= Sunabamail::Configuration.new
  end

  def self.configure = yield(configuration)
end

if defined?(Rails::Railtie)
  require "sunabamail/engine"
  require "sunabamail/railtie"
end
