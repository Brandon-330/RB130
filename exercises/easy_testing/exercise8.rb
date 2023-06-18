require 'minitest/autorun'

class TestExample < MiniTest::Test
  def test_subclass_of_numeric
    value = Numeric.new

    assert_includes value.class.ancestors, Numeric
  end
end