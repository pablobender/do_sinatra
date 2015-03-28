# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'do_sinatra/version'

Gem::Specification.new do |spec|
  spec.name          = "do_sinatra"
  spec.version       = DoSinatra::VERSION
  spec.authors       = ['Pablo Bender']
  spec.email         = ['pablo@bender.eti.br']

  spec.summary       = %q{Sinatra Lean Modular Application Generator.}
  spec.description   = %q{Quickly create an empty sinatra modular application.}
  spec.homepage      = "https://github.com/pablobender/do_sinatra"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(lib|exe|spec)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "thor", '~> 0.19.0'

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.2.0"
end
