class Sunabamail::Messages::SourcesController < Sunabamail::Messages::ApplicationController
  def show
    send_data @message.mail.html_part.body.to_s.force_encoding(@message.mail.charset),
      type: "text/plain",
      disposition: "inline"
  end
end
