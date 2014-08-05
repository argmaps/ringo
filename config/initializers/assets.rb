# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile = [
  'application.css','application.js',
  'bookmarklet.css',

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
