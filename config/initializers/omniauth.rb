OmniAuth.config.logger = Rails.logger

SERVICES = YAML.load(File.open("#{::Rails.root}/config/oauth.yml").read)

Rails.application.config.middleware.use OmniAuth::Builder do

  provider :developer unless Rails.env.production?
  provider :facebook, SERVICES['facebook']['key'], SERVICES['facebook']['secret'] # if SERVICES['github']
  provider :github, SERVICES['github']['key'], SERVICES['github']['secret'] # if SERVICES['github']
  provider :twitter, SERVICES['twitter']['key'], SERVICES['twitter']['secret'] # if SERVICES['twitter']
  provider :tumblr, SERVICES['tumblr']['key'], SERVICES['tumblr']['secret'] # if SERVICES['tumblr']
  provider :vimeo, SERVICES['vimeo']['key'], SERVICES['vimeo']['secret'] # if SERVICES['vimeo']

  # Note: access_type can be 'online' (for just authenticating) or 'offline' (for using services)
  # approval_prompt should be a blank string or else it defaults to 'force', which requires re-authenticating on each login/usage
  provider :google_oauth2, SERVICES['google']['key'], SERVICES['google']['secret'], {:access_type => 'online', :approval_prompt => ''} # if SERVICES['google']
  provider :youtube, SERVICES['google']['key'], SERVICES['google']['secret'], {:access_type => 'online', :approval_prompt => ''} # if SERVICES['google']

end
