require_relative 'boot'

require 'rails/all'



# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TfitnessRes
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.action_view.embed_authenticity_token_in_remote_forms = true

    # config.action_mailer.delivery_method = :postmark
    # config.action_mailer.postmark_settings = { :api_token => "b373f417-b5db-4935-81d5-21d81d6638fc" }

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end


