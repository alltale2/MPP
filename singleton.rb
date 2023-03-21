require 'singleton'

class MySingleton
  include Singleton

  def initialize
    @phrase = ''
  end

  def increment
    @phrase += ' he'
  end

  def phrase
    @phrase
  end
end

singleton1 = MySingleton.instance
singleton1.increment
puts singleton1.phrase

singleton2 = MySingleton.instance
puts singleton2.phrase
singleton2.increment
puts singleton1.phrase