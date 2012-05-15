class SessionsController < ApplicationController

  def new
    logger.debug "params: #{params.inspect}"
    services = ['youtube', 'tumblr', 'google_oauth2', 'twitter']
    links = services.map{|service| "<a style='margin: 15px;' href='/auth/#{service}'>#{service.camelize}</a>" }
    render :text => "<span style='font-size: 20pt;'>#{links}</span>"
  end

  def create
    render :text => "<pre>"+request.env["omniauth.auth"].to_yaml+"</pre>"
  end

  def failure
    render :text => "FAILURE :-("
  end

end
