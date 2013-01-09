# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rack-trimmer"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Joe Van Dyk"]
  s.date = "2013-01-09"
  s.description = "\n      Strips all whitespace from input / params\n    "
  s.email = "joe@tanga.com"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    "CHANGELOG",
    "LICENSE",
    "Rakefile",
    "lib/rack-plastic.rb",
    "lib/rack-trimmer.rb",
    "test/rack-trimmer_test.rb",
    "test/test_helper.rb"
  ]
  s.homepage = "http://github.com/joevandyk/rack-trimmer"
  s.require_paths = ["lib"]
  s.requirements = ["none"]
  s.rubygems_version = "1.8.24"
  s.summary = "Strips whitespace from input"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rack>, ["~> 1.0"])
      s.add_runtime_dependency(%q<nokogiri>, ["~> 1.4"])
      s.add_runtime_dependency(%q<rack-plastic>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_runtime_dependency(%q<rack-plastic>, [">= 0"])
    else
      s.add_dependency(%q<rack>, ["~> 1.0"])
      s.add_dependency(%q<nokogiri>, ["~> 1.4"])
      s.add_dependency(%q<rack-plastic>, [">= 0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rack-plastic>, [">= 0"])
    end
  else
    s.add_dependency(%q<rack>, ["~> 1.0"])
    s.add_dependency(%q<nokogiri>, ["~> 1.4"])
    s.add_dependency(%q<rack-plastic>, [">= 0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rack-plastic>, [">= 0"])
  end
end
