class Sunabamail::MessagesController < Sunabamail::ApplicationController
  before_action :set_message, only: %i[show destroy]

  def index
    @messages = Sunabamail::Message.all.order(id: :desc)
  end

  def show
  end

  def destroy
    @message.destroy!
    redirect_to messages_path, notice: "destroyed", status: :see_other
  end

  private

  def set_message
    @message = Sunabamail::Message.find(params.expect(:id))
  end
end
