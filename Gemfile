source 'http://rubygems.org'

gem 'rack', '1.3.5'
gem 'rails', '3.1.2'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2', '>= 0.3.10'
gem 'json'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '>= 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
gem 'capistrano'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

gem "acts_as_audited", ">= 2.0.0"

gem "devise", ">= 1.5.1"
gem "omniauth", ">= 1.0.0"
gem "omniauth-facebook"
gem "omniauth-github"
gem "omniauth-google-oauth2"
gem "omniauth-openid"
gem "omniauth-twitter"

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'execjs'
  gem 'therubyracer'
  gem 'uglifier', '>= 1.0.3'
  gem 'sass-rails', '>= 3.1.5.rc.2'
  gem 'coffee-rails', '>= 3.1.1'
end

gem 'jquery-rails'

gem "strip_attributes", ">= 1.0"

gem 'exception_notification', '>= 2.5.2', :require => 'exception_notifier'
# gem "exception_logger", '>= 0.1.11' # currently incompatible w/ 3.1 :(

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :development, :test do
  case RUBY_VERSION
    when '1.8.7'
      gem 'ruby-debug'
    when '1.9.2', '1.9.3'
      gem 'ruby-debug19', :require => 'ruby-debug'
  end
  
  gem 'webrat'
end
