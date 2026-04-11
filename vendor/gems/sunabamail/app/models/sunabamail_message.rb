class SunabamailMessage < ApplicationRecord
  def mail
    Mail::Message.new(encoded)
  end
end
