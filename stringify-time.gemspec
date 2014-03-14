# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stringify-time/version'

Gem::Specification.new do |spec|
  spec.name          = "stringify-time"
  spec.version       = StringifyTime::VERSION
  spec.authors       = ["Patrick Perey"]
  spec.email         = ["the4dpatrick@yahoo.com"]
  spec.summary       = %q{Railscast 033 stringify-time to a ruby gem}
  spec.description   = %q{Stringify Time extends ActiveRecord::Base to include the stringify_time method. You can then dynamically create getter and setter methods for a date attribute editable through a text field. Metaprogramming.}
  spec.homepage      = "http://github.com/the4dpatrick/stringify-time-gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
