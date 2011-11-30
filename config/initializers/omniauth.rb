config = YAML.load(File.open("#{::Rails.root}/config/oauth.yml").read)

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :tumblr, config['tumblr']['key'], config['tumblr']['secret']
end
