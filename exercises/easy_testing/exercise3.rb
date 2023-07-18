require 'minitest/autorun'

class ExampleTest < MiniTest::Test
  def test_nil
    value = nil
    assert_nil value
  end
end