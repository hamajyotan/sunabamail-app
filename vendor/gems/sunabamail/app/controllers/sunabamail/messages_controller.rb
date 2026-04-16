class Sunabamail::MessagesController < Sunabamail::ApplicationController
  before_action :set_message, only: %i[show destroy]

  def index
    @messages = message_class.all.order(id: :desc)
  end

  def show
  end

  def destroy
    @message.destroy!
    redirect_to messages_path, notice: "destroyed"
  end

  private

  def set_message
    @message = message_class.find(params.expect(:id))
  end

  def message_class = Sunabamail.configuration.message_class
end
