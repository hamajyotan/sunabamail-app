# frozen_string_literal: true

require "rails/generators/base"

module Sunabamail
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)

      desc "Creates a Sunabamail initializer to your application."

      def copy_initializer
        template "sunabamail.rb", "config/initializers/sunabamail.rb"
      end
    end
  end
end
