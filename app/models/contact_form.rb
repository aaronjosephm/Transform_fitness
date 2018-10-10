class ContactForm < MailForm::Base
  attribute :name,      :validate => true, :presence => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i, :presence => true
  attribute :file,      :attachment => true


  validates :name, :presence => true
  validates :email, :presence => true

  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts. TylerRosano@TF1tness.com
  def headers
    {
      :subject => "You have a new client interested in training!",
      :to => "FitCoach@tfithealthcoaching.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
