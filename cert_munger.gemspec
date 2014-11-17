# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cert_munger/version'

Gem::Specification.new do |spec|
  spec.name          = "cert_munger"
  spec.version       = CertMunger::VERSION
  spec.authors       = ["Steven Haddox"]
  spec.email         = ["steven.haddox@gmail.com"]
  spec.summary       = %q{Reformat commonly malformatted X509 strings.}
  spec.description   = %q{A gem that takes string input for X509 certificates and attempts to reformat them into a valid certificate.}
  spec.homepage      = "https://github.com/stevenhaddox/cert_munger"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'awesome_print'
  spec.add_development_dependency 'brakeman'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'rack'
  spec.add_development_dependency 'rack-test'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'yard'

  spec.add_dependency 'logging'
  spec.cert_chain  = ['certs/stevenhaddox.pem']
  spec.signing_key = File.expand_path("~/.gemcert/gem-private_key.pem") if $0 =~ /gem\z/
end
