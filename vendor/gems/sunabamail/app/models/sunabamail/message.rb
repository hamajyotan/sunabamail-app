class Sunabamail::Message < Sunabamail::Record
  def mail
    Mail::Message.new(encoded)
  end
end
