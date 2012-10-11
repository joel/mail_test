source 'https://rubygems.org'

gem 'rails', '3.2.8'

gem 'sqlite3'
gem 'jquery-rails'

# gem 'redis'
# gem 'resque'
# gem 'resque_mailer'
# gem 'premailer-rails3'
gem 'postmark-rails'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'dotenv'
end

group :development do
  # gem 'mailcatcher'
  gem "rspec-rails"
end

group :test do
  # gem 'email_spec'
  gem 'rspec'
  gem "database_cleaner"
  gem 'spork'
  gem 'guard'
  gem 'rb-fsevent'
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'growl' # For Guard
  gem "factory_girl_rails"
end