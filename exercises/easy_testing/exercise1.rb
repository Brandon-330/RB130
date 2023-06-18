require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class TestExercise < Minitest::Test
  def test_odd?
    value = 3
    assert value.odd?
  end
end