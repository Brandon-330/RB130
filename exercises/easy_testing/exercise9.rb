require 'minitest/autorun'

class Testing < MiniTest::Test
  def test_different_objects
    list = []
    assert_instance_of list.class, list.process
  end
end