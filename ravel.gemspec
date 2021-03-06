# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ravel/version'

Gem::Specification.new do |spec|
  spec.name          = "ravel"
  spec.license       = "MIT"
  spec.version       = Ravel::VERSION
  spec.authors       = ["Chris Graf"]
  spec.email         = ["christopher.n.graf@gmail.com"]

  spec.summary       = %q{Convert a collection of routes into an API DSL.}
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/cngraf/ravel"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
