Omniauth Rails example application
==================================

Ruby on Rails working with the [Tumblr API](http://tumblr.com/docs/en/api/v2)
using the [Omniauth 1.0](http://github.com/intridea/omniauth) gem.

Getting Started
---------------

Get Tumblr API keys and put them in `config/oauth.yml`

<http://www.tumblr.com/oauth/apps>

Edit *config/oauth.yml* and add your [Tumblr API keys](http://tumblr.com/docs/en/api/v2).

Setup the app:

    gem install bundler
    bundle install
    bundle exec rails server

Then visit /auth/:provider URL to authenticate:

<http://localhost:3000/auth/tumblr>


License
-------

Copyright (c) 2011 Jamie Wilkinson

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
