# frozen_string_literal: true

module Sunabamail
  class Engine < ::Rails::Engine
    isolate_namespace Sunabamail

    rake_tasks do
      load "sunabamail/tasks.rb"
    end

    config.sunabamail = ActiveSupport::OrderedOptions.new

    initializer "sunabamail.config" do
      Sunabamail.connects_to = :sunabamail
      Sunabamail.use_turbo = !!defined?(Turbo::Engine)

      config.sunabamail.each do |name, value|
        Sunabamail.public_send("#{name}=", value)
      end
    end

    initializer "sunabamail.add_delivery_method" do
      ActiveSupport.on_load :action_mailer do
        ActionMailer::Base.add_delivery_method(:sunabamail, Sunabamail::DeliveryMethod)
      end
    end
  end
end
