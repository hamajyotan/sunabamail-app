class Sunabamail::Messages::AllsController < ApplicationController
  def destroy
    message_class.destroy_all
    redirect_to messages_path, notice: "destroyed"
  end

  private

  def message_class = Sunabamail.configuration.message_class
end
