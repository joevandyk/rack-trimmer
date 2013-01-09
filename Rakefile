require 'rake'
require 'rake/testtask'
require 'rdoc/task'

desc 'Generate documentation for Rack::Trimmer.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = 'Rack::Trimmer'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

desc 'Default: run unit tests.'
task :default => :test

desc 'Test Rack::Trimmer'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name          = "rack-trimmer"
    s.version       = "0.0.1"
    s.author        = "Joe Van Dyk"
    s.email         = "joe@tanga.com"
    s.summary       = "Strips whitespace from input"
    s.description   = %Q{
      Strips all whitespace from input / params
    }
    s.require_path  = "lib"
    s.files         = []
    s.files         << "README.rdoc"
    s.files         << "LICENSE"
    s.files         << "CHANGELOG"
    s.files         << "Rakefile"
    s.files         += Dir.glob("lib/**/*")
    s.files         += Dir.glob("test/**/*")

    s.homepage      = "http://github.com/joevandyk/rack-trimmer"
    s.requirements  << "none"
    s.has_rdoc      = true
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end
