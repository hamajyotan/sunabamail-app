class Sunabamail::Messages::RawsController < Sunabamail::Messages::ApplicationController
  def show
    send_data @message.encoded,
      type: "text/plain",
      disposition: "inline"
  end
end
