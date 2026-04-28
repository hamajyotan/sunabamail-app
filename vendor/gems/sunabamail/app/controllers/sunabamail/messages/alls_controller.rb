class Sunabamail::Messages::AllsController < ApplicationController
  def destroy
    Sunabamail::Message.destroy_all
    redirect_to messages_path, notice: "destroyed"
  end
end
