# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'adorner/version'

Gem::Specification.new do |spec|
  spec.name          = "adorner"
  spec.version       = Adorner::VERSION
  spec.authors       = ["Jonathan C. Calixto"]
  spec.email         = ["jonathanccalixto@gmail.com"]

  spec.summary       = %q{Decore the models in views}
  spec.description   = %q{It is helper tool will help to display values of the models in views without pain.}
  spec.homepage      = "https://github.com/yanotec/adorner"
  spec.license       = "MIT"

  # # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # # delete this section to allow pushing this gem to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 3.0"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
