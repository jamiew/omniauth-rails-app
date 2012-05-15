class SessionsController < ApplicationController

  def new
    logger.debug "params: #{params.inspect}"
    render :text => "Auth: <a href='/auth/tumblr'>Tumblr</a>, <a href='/auth/youtube'>YouTube</a>"
  end

  def create
    require 'pp'
    pp request.env
    render :text => "<pre>"+request.env["omniauth.auth"].to_yaml+"</pre>"
  end

  def failure
    render :text => "FAILURE :-("
  end

end
