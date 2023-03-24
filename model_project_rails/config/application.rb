require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ModelProjectRails
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    I18n.available_locales = [:en, :"pt-BR"]
    # I18n.default_locale = :"pt-BR"
    # config.i18n.default_locale = :'pt-BR'

    # config.time_zone = "Central Time (US & Canada)"
    config.encoding = "utf-8"
    config.time_zone = "America/Fortaleza"
    config.active_record.default_timezone = :local

    config.api_only = false

    # config.to_prepare do
    #   Devise::SessionsController.layout "clean"
    #   Devise::RegistrationsController.layout "clean"
    #   Devise::ConfirmationsController.layout "application"
    #   Devise::UnlocksController.layout "application"
    #   Devise::PasswordsController.layout "application"
    # end

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
