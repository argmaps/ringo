source 'https://rubygems.org'
ruby '2.1.2'

gem 'rails', '4.1.2'
gem 'pg'
gem 'activerecord-postgresql-adapter', '0.0.1'
gem 'connection_pool'
gem 'dalli'

gem 'sass-rails', '~> 4.0.3'
gem 'compass-rails'
gem 'rails-sass-images' # helpers for css, like: `inline('my.png')`
gem 'uglifier', '>= 1.3.0'

gem 'jquery-rails'
gem 'turbolinks'
gem 'jquery-turbolinks'
gem 'turboboost'

gem 'sorcery'
gem 'request_store'
gem 'simple_form'

gem 'rails-bookmarklet', :github =>'argmaps/rails-bookmarklet', :branch => 'ringo'
gem 'zeroclipboard-rails'
gem 'browser-timezone-rails'

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
  gem 'newrelic_rpm'
  gem 'asset_sync'
end
