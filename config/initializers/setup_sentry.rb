Raven.configure do |config|
  config.dsn = 'https://9abe61e081b346bfb17bd0d88d3875ad:5f47a12573974f61bff4a54f79d1df02@sentry.io/196621'
  config.sanitize_fields = Rails.application.config.filter_parameters.map(&:to_s)
end
