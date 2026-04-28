module Sunabamail
  class Record < ActiveRecord::Base
    self.abstract_class = true

    connects_to(**Sunabamail.connects_to) if Sunabamail.connects_to
  end
end
