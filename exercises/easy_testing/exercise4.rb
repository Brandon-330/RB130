require 'minitest/autorun'

class FirstExample < MiniTest::Test
  def test_array_empty?
    list = []
    assert_empty list
  end
end