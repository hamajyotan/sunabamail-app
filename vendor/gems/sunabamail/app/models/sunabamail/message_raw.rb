class Sunabamail::MessageRaw < Sunabamail::Record
  belongs_to :message,
    foreign_key: :sunabamail_message_id,
    class_name: "Sunabamail::Message",
    inverse_of: :raw
end
