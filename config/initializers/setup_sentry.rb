Raven.configure do |config|
  config.dsn = "https://#{Rails.application.secrets.sentry_key}:#{Rails.application.secrets.sentry_secret}@sentry.io/196621"
  config.sanitize_fields = Rails.application.config.filter_parameters.map(&:to_s)
  config.environments = ['production']
end
