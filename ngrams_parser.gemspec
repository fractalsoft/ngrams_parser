# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ngrams_parser/version'

Gem::Specification.new do |spec|
  spec.name          = "ngrams_parser"
  spec.version       = NgramsParser::VERSION
  spec.authors       = ["Aleksander Malaszkiewicz"]
  spec.email         = ["info@fractalsoft.org"]
  spec.summary       = %q{Split text into ngrams}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "lexical_units"
end
