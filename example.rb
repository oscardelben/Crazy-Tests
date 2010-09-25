require 'test/unit'
require 'test_ext'

class Foo
  
  def say_something; "hurra!"; end
  
end

class FooTest < Test::Unit::TestCase
  
  def test_success
    assert true
  end
  
  3.times do |i|
    define_method "test_should_work_#{i}" do
      assert_equal "different", Foo.new.say_something
    end
  end
  
end
