require 'bundler/setup'
require 'test/unit'
$:.unshift(File.expand_path(File.dirname(__FILE__) + "/../lib"))
require 'rack-trimmer'
require 'rack/test'

