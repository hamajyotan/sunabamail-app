# frozen_string_literal: true

require "sunabamail/version"
require "sunabamail/engine"

require "zeitwerk"

loader = Zeitwerk::Loader.for_gem(warn_on_extra_files: false)
loader.ignore("#{__dir__}/sunabamail/tasks.rb")
loader.ignore("#{__dir__}/generators")
loader.setup

module Sunabamail
  extend self

  attr_accessor :connects_to
  attr_accessor :use_turbo
end
