Sunabamail.configure do |config|
  config.use_turbo = defined?(Turbo::Engine)
  config.use_attachments = defined?(ActiveStorage::Engine)
end
