# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'canadian_mergers/version'

Gem::Specification.new do |spec|
  spec.name          = 'canadian_mergers'
  spec.version       = CanadianMergers::VERSION
  spec.authors       = ['Dylan Bromell']
  spec.email         = ['dmbromell@gmail.com']

  spec.summary       = 'A CLI tool for scraping monthly data on concluded mergers in Canada'
  spec.homepage      = 'https://github.com/cptbrkfst/canadian_mergers'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Dependencies
  spec.add_runtime_dependency     'terminal-table', '= 1.8'
  spec.add_runtime_dependency     'nokogiri', '~> 1.6', '>= 1.6.8'
  spec.add_development_dependency 'awesome_print', '~> 1.7'
  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'pry', '>= 0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
