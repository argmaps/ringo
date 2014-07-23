source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.2'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
gem 'compass-rails'
gem 'rails-sass-images' # helpers for css, like: `inline('my.png')`
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'jquery-turbolinks'
gem 'turboboost'

gem 'sorcery'
gem 'request_store'
gem 'simple_form'

gem 'rails-bookmarklet', :github =>'argmaps/rails-bookmarklet', :ref => '99bb67ddbaf84779a10156196bfaccfe4de67029'
gem 'zeroclipboard-rails'

group :development do
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'quiet_assets'
end

group :development, :test do
  gem 'dotenv-rails'
  # Debugging gems - must be excluded from Heroku
  gem 'pry'
  gem 'pry-nav'
  gem 'pry-stack_explorer'
  gem 'pry-remote'

  gem 'factory_girl_rails' # needs to be included in dev group so Rails generators make factories instead of fixtures
end

group :test do
  gem 'rspec-rails'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'vcr'
  gem 'webmock', '1.8'
end

group :production do
  gem 'puma'
  gem 'rack-timeout'
  gem 'rails_12factor'
  gem 'newrelic_rpm'
  gem 'asset_sync'
end
