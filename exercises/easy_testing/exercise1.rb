require 'minitest/autorun'

class ExampleTest < MiniTest::Test
  def test_odd?
    value = 2
    assert value.odd?
  end
end