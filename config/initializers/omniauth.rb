OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1443210899261203', 'cd9437c10071643fb8955782ef7f20c9', image_size: 'large'
end
