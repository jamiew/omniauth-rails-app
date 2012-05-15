class SessionsController < ApplicationController

  def new
    logger.debug "params: #{params.inspect}"
    services = ['youtube', 'tumblr', 'google_oauth2', 'twitter', 'github', 'facebook', 'vimeo'] # TODO extract from OmniAuth.config
    links = services.sort.map{|service| "<li style='margin: 15px;'><a href='/auth/#{service}'>#{service}</a></li>" }
    render :text => "Authenticate with: <ul style='font-size: 20pt;'>#{links.join}</ul>", :layout => true
  end

  def create
    render :text => "<pre>"+request.env["omniauth.auth"].to_yaml+"</pre>"
  end

  def failure
    render :text => "FAILURE :-("
  end

end
