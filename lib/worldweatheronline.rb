require 'singleton'
require "worldweatheronline/free_weather"

module Worldweatheronline
  module_function
  class Config
    attr_accessor :api_key
    include Singleton
  end

  def api_key
    Config.instance.api_key
  end

  def api_key=(value)
    Config.instance.api_key = value
  end

  def config(&block)
    Config.instance.instance_eval( Config.instance, &block)
  end
  # Your code goes here...
end
