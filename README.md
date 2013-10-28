# PHPSession::Rails
[![Build Status](https://travis-ci.org/Shinpeim/php_session-rails.png?branch=master)](https://travis-ci.org/Shinpeim/php_session-rails)

Add PHP session compatibility on your rails application.

## Installation

Add this line to your application's Gemfile:

    gem 'php_session-rails'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install php_session-rails

## Usage

Gemfile :

```
gem 'php_session-rails'
```

rails_root/config/initializers/session_store.rb:

```
your::Application.config.session_store :php_store, {
  :session_file_dir => "/path/to/session_file_dir",
  :file_options => {
    :internal_encoding => 'UTF-8', # encoding in rails
    :external_encoding => 'EUC-JP',# encoding in php session
    :encoding_option => {:undef => :replace} # passed to String#encode
  }
}
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
