require "test_helper"

class FooMailerTest < ActionMailer::TestCase
  test "bar" do
    mail = FooMailer.bar
    assert_equal "Bar", mail.subject
    assert_equal [ "to@example.org" ], mail.to
    assert_equal [ "from@example.com" ], mail.from
    assert_match "Hi", mail.body.encoded
  end
end
