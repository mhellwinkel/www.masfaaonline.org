require 'html/proofer'

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
  HTML::Proofer.new(
    "./_site",
    {
      :check_favicon => true,
      :check_html => true,
    }
  ).run
end
