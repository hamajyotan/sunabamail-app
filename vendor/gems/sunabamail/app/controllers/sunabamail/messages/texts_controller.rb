class Sunabamail::Messages::TextsController < Sunabamail::Messages::ApplicationController
  def show
    send_data @message.mail.text_part.body.to_s.force_encoding(@message.mail.charset),
      type: "text/plain",
      disposition: "inline"
  end
end
