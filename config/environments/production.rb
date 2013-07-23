MakeyourlawsOrg::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # Code is not reloaded between requests
  config.cache_classes = true

  # Eager load code on boot. This eager loads most of Rails and
  # your application in memory, allowing both thread web servers
  # and those relying on copy on write to perform better.
  # Rake tasks automatically ignore this option for performance.
  config.eager_load = true

  # Full error reports are disabled and caching is turned on
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Enable Rack::Cache to put a simple HTTP cache in front of your application
  # Add `rack-cache` to your Gemfile before enabling this.
  # For large-scale production use, consider using a caching reverse proxy like nginx, varnish or squid.
  config.action_dispatch.rack_cache = true
  
  # Disable Rails's static asset server (Apache or nginx will already do this)
  config.serve_static_assets = false

  # Compress JavaScripts and CSS.
  config.assets.js_compressor = :uglifier
  config.assets.css_compressor = :sass

  # Do not fallback to assets pipeline if a precompiled asset is missed.
  config.assets.compile = false

  # Generate digests for assets URLs.
  config.assets.digest = true

  # Version of your assets, change this if you want to expire all your assets.
  config.assets.version = '1.0'

  # Specifies the header that your server uses for sending files
  # config.action_dispatch.x_sendfile_header = "X-Sendfile" # for apache
  config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # for nginx

  # Force all access to the app over SSL, use Strict-Transport-Security, and use secure cookies.
  # config.force_ssl = true # done in app controller instead, to make Tor onion address non-SSL

  # Set to :debug to see everything in the log.
  config.log_level = :info

  # Prepend all log lines with the following tags.
  # config.log_tags = [ :subdomain, :uuid ]

  # Use a different logger for distributed setups.
  # config.logger = ActiveSupport::TaggedLogging.new(SyslogLogger.new)

  # Use a different cache store in production
  # config.cache_store = :mem_cache_store

  # Enable serving of images, stylesheets, and JavaScripts from an asset server.
  # config.action_controller.asset_host = "http://assets.example.com"

  # Precompile additional assets.
  # application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
  # config.assets.precompile += %w( search.js )

  config.after_initialize do
    Rails.application.routes.default_url_options[:host] = 'www.makeyourlaws.org'
  end
  config.action_mailer.default_url_options = { :host => 'www.makeyourlaws.org' }
  config.action_mailer.delivery_method = :sendmail # :smtp
  # defaults to -i -t. However, Mail::Sendmail actually puts recipients on the command line, so
  #  if -t gets them from the headers, it screws things up. Thus, no -t.
  config.action_mailer.sendmail_settings = {:arguments => '-i '} 
  
  # config.action_mailer.smtp_settings = {
  #   :address => 'mail.makeyourlaws.org',
  #   :port => 587,
  #   :domain => 'makeyourlaws.org',
  #   :authentication => :login,
  #   :user_name => Keys.get("mail_user"),
  #   :password => Keys.get("mail_password"),
  #   :enable_starttls_auto => false 
  #   # FIXME: disabling TLS is a horrible but effective way to fix
  #   #  OpenSSL::SSL::SSLError (hostname was not match with the server certificate)
  #   # There has to be something we can do to make DreamHost's SSL certs not crap out.    
  # }
  
  # Ignore bad email addresses and do not raise email delivery errors.
  # Set this to true and configure the email server for immediate delivery to raise delivery errors.
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.perform_deliveries = true
  
  # Enable threaded mode
  # config.threadsafe!

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation can not be found)
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners
  config.active_support.deprecation = :notify
  
  # Disable automatic flushing of the log to improve performance.
  # config.autoflush_log = false
    
  # Use default logging formatter so that PID and timestamp are not suppressed.
  config.log_formatter = ::Logger::Formatter.new
end
