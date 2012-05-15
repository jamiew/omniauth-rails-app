Omniauth + Rails example application
==================================

A Rails 3.2 application with [OmniAuth 1.0](http://github.com/intridea/omniauth),
configured to authenticate out-of-box with the following providers:


* Twitter
* Tumblr
* GitHub
* Google (OAuth 2)
* YouTube (OAuth 2)
* Facebook
* Vimeo
* 'Developer' (testing)

(Up-to-date as of May 15, 2012)

A demo of the app online: <http://omniauth-rails-app.herokuapp.com>


API Keys
---------------

We've registered and included config keys for sandbox applications so that this reference app Just Works™,
but you will want to register your own API keys on various services for use in a production app.

API keys and secrets go in *config/oauth.yml* and are loaded and configured in *config/initializers/omniauth.rb*

Getting Started
---------------

To setup the app:

    gem install bundler
    bundle install
    bundle exec rake db:setup
    bundle exec rails server

Then visit /auth/:provider URL to authenticate, like:

<http://localhost:3000/auth/tumblr>

Provider Info
-------------

For documentation, API information and configuration options for each provider, check out the relevant gems:

* [omniauth-tumblr](https://github.com/jamiew/omniauth-tumblr)
* [omniauth-youtube](https://github.com/jamiew/omniauth-youtube)
* [omniauth-google-oauth2](https://github.com/zquestz/omniauth-google-oauth2)
* [omniauth-github](https://github.com/intridea/omniauth-github)
* [omniauth-twitter](https://github.com/arunagw/omniauth-twitter)
* [omniauth-facebook](https://github.com/mkdynamic/omniauth-facebook)
* [omniauth-vimeo](https://github.com/lomography/omniauth-vimeo)


License
-------

Copyright (c) 2011 Jamie Wilkinson

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
