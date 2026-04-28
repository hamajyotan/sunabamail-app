class Sunabamail::Messages::ApplicationController < Sunabamail::ApplicationController
  before_action :set_message

  private

  def set_message
    @message = Sunabamail::Message.find(params.expect(:message_id))
  end
end
