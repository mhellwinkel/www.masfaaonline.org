require 'rspec/core/rake_task'

task :default => [:serve]

desc "Build site."
task :build do
  sh "bundle exec jekyll build"
end

desc "Serve site."
task :serve do
  sh "bundle exec jekyll serve"
end

desc "Test site."
task :test => [:build] do
  RSpec::Core::RakeTask.new(:test)
end
