Rails.application.configure do

  config.action_mailer.delivery_method = :smtp
  config.action_mailer.default_url_options = { host: "yourapp.herokuapp.com" }
  # or your custom domain name eg. "www.yourdomain.com"
end
