OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1136915359727545', 'f63a0aacdea0102fa9a28d71b13e1e1b'
end