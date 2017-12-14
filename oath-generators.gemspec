# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'oath/generators/version'

Gem::Specification.new do |spec|
  spec.name          = "oath-generators"
  spec.version       = Oath::Generators::VERSION
  spec.authors       = ["halogenandtoast"]
  spec.email         = ["halogenandtoast@gmail.com"]
  spec.summary       = %q{Rails generators for the oath authentication library}
  spec.description   = %q{Generators to add in different forms of user authentication to a rails application.}
  spec.homepage      = "http://github.com/halogenandtoast/oath-generators"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_dependency "oath", ">= 0.0.12"
end
