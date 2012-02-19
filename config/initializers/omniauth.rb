SERVICES = YAML.load(File.open("#{::Rails.root}/config/oauth.yml").read)

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :tumblr, SERVICES['tumblr']['key'], SERVICES['tumblr']['secret']

  # provider :google, SERVICES['google']['consumer_key'], SERVICES['google']['consumer_secret']
  provider :youtube, SERVICES['google']['consumer_key'], SERVICES['google']['consumer_secret']

end
