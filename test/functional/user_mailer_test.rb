require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "signup_confiration" do
    mail = UserMailer.signup_confiration
    assert_equal "Signup confiration", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
