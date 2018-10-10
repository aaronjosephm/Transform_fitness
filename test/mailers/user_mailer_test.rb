require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "welcome" do
    mail = UserMailer.welcome
    assert_equal "Welcome", mail.subject
    assert_equal ["FitCoach@tfithealthcoaching.com"], mail.to
    assert_equal ["FitCoach@tfithealthcoaching.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
