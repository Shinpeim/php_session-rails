require 'rack/session/php'
require 'action_dispatch/middleware/session/abstract_store'

module ActionDispatch
  module Session
    class PhpStore < Rack::Session::PHP
      include Compatibility
      include StaleSessionCheck
    end
  end
end
