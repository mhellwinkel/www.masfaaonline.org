require 'html-proofer'

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
  HTMLProofer.check_directory(
    "./_site",
    {
      :check_favicon => true,
      :check_html => true,
      :assume_extension => true,
      :cache => { :timeframe => '1h' },
      :url_ignore => [
        /mappingyourfuture.org/,
        /mygreatlakes.org/
      ],
      :file_ignore => ["./_site/info.html"]
    }
  ).run
end
