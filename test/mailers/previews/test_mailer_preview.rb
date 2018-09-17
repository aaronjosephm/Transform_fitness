# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class TestMailerPreview < ActionMailer::Preview

  def message
    user = User.first
    TestMailer.message(user)
  end

end
