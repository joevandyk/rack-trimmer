$:.unshift(File.expand_path(File.dirname(__FILE__)))
require "test_helper"

class MyApp
  #def initialize app
    #@app = app
  #end

  def call env
    req = Rack::Request.new(env)
    params = iter(req.params) do |obj|
      if !obj.frozen?
        obj.strip!
      end
    end
    #@app.call(env)
    [200, {}, '']
  end

  def iter h, &b
    h.each do |k, v|
      something(k, &b)
      something(v, &b)
    end
  end

  def something v, &b
    case v
    when Hash, Array
      iter(v, &b)
    when nil
    else
      b.call(v)
    end
  end
end

class RackTrimmerTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    MyApp.new
  end

  CASES = {
    {"joe" => " cool " } => {"joe" => "cool"},
    {"joe" => {"dude" => " great " } } => { "joe" => {"dude" => "great"}},
    {"f1" => [" f2 ", {" f3 " => [" f4 "]}]} => {"f1" => ["f2", {" f3 " => ["f4"]}]}
  }
  CASES.each_with_index do |test, index|
    define_method "test_#{index}" do
      input, expected = test
      post "/", input
      assert_equal expected, last_request.params
    end
  end

  def test_other
    post "/?joe=%20blah%20"
    assert_equal({"joe" => "blah"}, last_request.params)
  end
end

