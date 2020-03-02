# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'skyp/version'

Gem::Specification.new do |spec|
  spec.name          = 'skyp'
  spec.version       = Skyp::VERSION
  spec.authors       = ['Chun-wei Kuo']
  spec.email         = ['Dendoh@gmail.com']
  spec.description   = %q{A command-line tool to search Skype history.}
  spec.summary       = %q{A command-line tool to search Skype history.}
  spec.homepage      = 'https://github.com/Domon/skyp'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'sqlite3',      '~> 1.3.7'
  spec.add_dependency 'activerecord', '>= 4.0', '< 6.1'
  spec.add_dependency 'thor',         '~> 0.18.1'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake',    '~> 10.1.0'
end
