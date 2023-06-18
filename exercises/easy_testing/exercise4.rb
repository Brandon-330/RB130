require 'minitest/autorun'

class TestExample < Minitest::Test
  def test_list_not_empty
    list = []
    assert_empty list
  end
end