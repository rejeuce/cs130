OmniAuth.config.logger = Rails.logger
 
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1825879194325339', 'edf78bd8d9d9f655948890233c55e095', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end