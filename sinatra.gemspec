$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'sinatra/version'

Gem::Specification.new 'sinatra', Sinatra::VERSION do |s|
  s.description       = "Sinatra is a DSL for quickly creating web applications in Ruby with minimal effort."
  s.summary           = "Classy web-development dressed in a DSL"
  s.authors           = ["Blake Mizerany", "Ryan Tomayko", "Simon Rozet", "Konstantin Haase"]
  s.email             = "sinatrarb@googlegroups.com"
  s.homepage          = "http://www.sinatrarb.com/"
  s.license           = 'MIT'
  s.files = %w(.yardopts AUTHORS.md CHANGELOG.md CONTRIBUTING.md Gemfile LICENSE MAINTENANCE.md Rakefile SECURITY.md sinatra.gemspec) + Dir['README*.md', 'lib/**/*', 'examples/*']
  s.test_files        = s.files.select { |p| p =~ /^test\/.*_test.rb/ }
  s.extra_rdoc_files  = s.files.select { |p| p =~ /^README/ } << 'LICENSE'
  s.rdoc_options      = %w[--line-numbers --inline-source --title Sinatra --main README.rdoc --encoding=UTF-8]

  s.required_ruby_version = '>= 2.2.0'

  s.add_dependency 'rack', '~> 2.0'
  s.add_dependency 'tilt', '~> 2.0'
  s.add_dependency 'rack-protection', '~> 1.5.3'
  s.add_dependency 'mustermann',  '~> 0.4'
end
