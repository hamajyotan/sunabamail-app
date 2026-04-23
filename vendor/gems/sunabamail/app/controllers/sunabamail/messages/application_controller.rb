class Sunabamail::Messages::ApplicationController < Sunabamail::ApplicationController
  before_action :set_message

  private

  def set_message
    @message = message_class.find(params.expect(:message_id))
  end
end
