Sunabamail.configure do |config|
  config.use_turbo = defined?(Turbo::Engine)
  config.attachment_strategy = :inline
end
