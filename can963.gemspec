# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yaml'

Gem::Specification.new do |spec|
  spec.name          = "can963"
  spec.version       = YAML.load_file("config/attendance.yml")['version']
  spec.authors       = ["Kazuki Hamasaki"]
  spec.email         = ["ne.vivam.si.abis@gmail.com"]
  spec.summary       = %q{Check can963 out}
  spec.description   = %q{Check can963 out}
  spec.homepage      = "https://github.com/ashphy/CAN963"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "thor", "~> 0.18.1"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "capture-output"
  spec.add_development_dependency "rubocop"
end
