source 'https://rubygems.org'

require 'json'
require 'open-uri'
versions = JSON.parse(open('https://pages.github.com/versions.json').read)

gem 'github-pages', versions['github-pages']
gem 'rake'
gem 'rspec'
gem 'html-proofer'

# see https://circleci.com/docs/test-metadata/
gem 'rspec_junit_formatter', '0.2.2'
