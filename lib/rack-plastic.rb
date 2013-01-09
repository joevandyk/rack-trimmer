require 'nokogiri'
require 'rack-plastic'

module Rack
  class Trimmer

    def initialize(app, options = {}) #:nodoc:
      @app = app
      @options = options
    end

    def call(env) #:nodoc:
    end
  end
end
