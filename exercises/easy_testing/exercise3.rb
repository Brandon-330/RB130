require 'minitest/autorun'

class TestExample < Minitest::Test
  def test_nil
    assert_nil(nil)
  end
end