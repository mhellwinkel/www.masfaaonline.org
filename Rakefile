require 'rspec/core/rake_task'
require "yaml"

task :default => [:serve]

desc "Build site."
task :build do
  sh "bundle exec jekyll build --config _config.yml,_config.dev.yml"
end

desc "Serve site."
task :serve do
  sh "bundle exec jekyll serve --config _config.yml,_config.dev.yml"
end

desc "Test site."
task :test => [:build] do
  RSpec::Core::RakeTask.new(:test)
end

desc "Find files in site that are not present in data files."
task :prune do
  files = Rake::FileList["documents/downloads/*", "governance/downloads/*", "nt4cm/downloads/*"]

  data_files = []

  # from YAMLs, get all values for downloads key
  ymls = Rake::FileList["_data/*.yml"]
  ymls.each { |yml|
    file = YAML.load_file(yml)
    file.each { |record|
      data_files << record["downloads"]
    }
  }

  # flatten array to deal with multiple formats for a download
  data_files.flatten!

  to_remove = []
  files.each { |file|
    if not data_files.include?(File.basename(file))
      to_remove << file
    end
  }

  if ! to_remove.empty?
    puts "These files are extras and can probably be removed."
    to_remove.each { |file|
       puts File.expand_path(file)
    }
  end

end
