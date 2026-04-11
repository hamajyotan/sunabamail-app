# frozen_string_literal: true

module Sunabamail
  class Railtie < ::Rails::Railtie
    initializer "sunabamail.add_delivery_method" do
      ActiveSupport.on_load :action_mailer do
        ActionMailer::Base.add_delivery_method(:sunabamail, Sunabamail::DeliveryMethod)
      end
    end
  end
end
