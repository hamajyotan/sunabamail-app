class Sunabamail::Message < Sunabamail::Record
  has_one :raw,
    foreign_key: :sunabamail_message_id,
    class_name: "Sunabamail::MessageRaw",
    inverse_of: :message,
    dependent: :destroy,
    autosave: true

  def mail
    Mail::Message.new(raw.encoded)
  end
end
