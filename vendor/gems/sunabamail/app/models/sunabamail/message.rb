class Sunabamail::Message < Sunabamail::Record
  has_one :message_raw, dependent: :destroy, autosave: true

  def mail
    Mail::Message.new(message_raw.encoded)
  end
end
