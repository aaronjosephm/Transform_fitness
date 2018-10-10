# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/welcome
  # def welcome
  #   user = User.first
  #   UserMailer.welcome(user)
  # end
  def message
    mail(
      :subject => 'Hello from Postmark',
      :to  => 'FitCoach@tfithealthcoaching.com',
      :from => 'FitCoach@tfithealthcoaching.com',
      :html_body => '<strong>Hello</strong> dear Postmark user.',
      :track_opens => 'true')
  end

end
