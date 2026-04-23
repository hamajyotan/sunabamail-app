class Sunabamail::Messages::AttachmentsController < Sunabamail::Messages::ApplicationController
  before_action :set_attachment, only: %i[show]

  def show
    send_data(@attachment.read, filename: @attachment.filename)
  end

  private

  def set_attachment
    @attachment = @message.mail.attachments[params.expect(:id).to_i]
  end
end
