OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '102783296559111', 'd8940fb464b7904944fe99b5a5788716'
end
