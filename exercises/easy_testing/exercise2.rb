require 'minitest/autorun'

class TestExample < Minitest::Test
  def test_downcase
    value = 'XYZ'
    assert value.downcase, 'xyz'
  end
end