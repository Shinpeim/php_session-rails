# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'php_session/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "php_session-rails"
  spec.version       = PHPSession::Rails::VERSION
  spec.authors       = ["Shinpei Maruyama"]
  spec.email         = ["shinpeim@gmail.com"]
  spec.description   = %q{Read/write php session file from Ruby on Rails}
  spec.summary       = %q{Read/write php session file from Ruby on Rails. Multibyte strings are spported.}
  spec.homepage      = "https://github.com/Shinpeim/php_session-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "actionpack", "~>4.0.0"
  spec.add_dependency "rack-session-php", "0.0.2"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
