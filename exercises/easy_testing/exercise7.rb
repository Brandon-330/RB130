require 'minitest/autorun'

class ExampleTest < MiniTest::Test
  def test_value_instance_of_numeric
    value = Numeric.new

    assert_instance_of Numeric, value
  end
end