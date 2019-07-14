require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SmartphoneStore
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.action_controller.perform_caching = true

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    #
    #
    # cache na RAM
    # config.cache_store = :memory_store, { size: 200.megabytes }

    # cache em arquivo
    # config.cache_store = :file_store, Rails.root.join("public/app_cache")

    # cache NullStore
    # config.cache_store = :null_store
    #
    config.cache_store = :redis_cache_store
  end
end