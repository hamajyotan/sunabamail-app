class Sunabamail::Messages::RawsController < Sunabamail::Messages::ApplicationController
  def show
    send_data @message.message_raw.encoded,
      type: "text/plain",
      disposition: "inline"
  end
end
