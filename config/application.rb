require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Ringo
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # List asset files to be precompiled for production (also used in Jasmine tests)
    config.assets.precompile = [
      'application.css','application.js', 'bookmarklet.css',

      'flatty/fontawesome-webfont.eot',
      'flatty/fontawesome-webfont.svg',
      'flatty/fontawesome-webfont.ttf',
      'flatty/fontawesome-webfont.woff',

      'flatty/montserrat-regular-webfont.eot',
      'flatty/montserrat-regular-webfont.svg',
      'flatty/montserrat-regular-webfont.ttf',
      'flatty/montserrat-regular-webfont.woff',

      'flatty/montserrat-bold-webfont.eot',
      'flatty/montserrat-bold-webfont.svg',
      'flatty/montserrat-bold-webfont.ttf',
      'flatty/montserrat-bold-webfont.woff',

      'ZeroClipboard.swf'
    ]

    # compress responses
    config.middleware.use Rack::Deflater
  end
end
