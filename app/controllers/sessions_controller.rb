class SessionsController < ApplicationController

  def new
    logger.debug "params: #{params.inspect}"
    render :text => "Click this <a href='/auth/tumblr'>phatty link</a>"
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
