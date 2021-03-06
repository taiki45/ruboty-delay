# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/delay/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-delay"
  spec.version       = Ruboty::Delay::VERSION
  spec.authors       = ["Taiki ONO"]
  spec.email         = ["taiks.4559@gmail.com"]
  spec.summary       = %q{Execute ruboty commands after given seconds.}
  spec.description   = %q{To delay command in Ruboty bot framework.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "ruboty"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
end
