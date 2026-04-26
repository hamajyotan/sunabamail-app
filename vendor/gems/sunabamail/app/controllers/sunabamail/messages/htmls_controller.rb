class Sunabamail::Messages::HtmlsController < Sunabamail::Messages::ApplicationController
  def show
    send_data @message.mail.html_part.body.to_s.force_encoding(@message.mail.charset),
      type: "text/html",
      disposition: "inline"
  end
end
