require 'minitest/autorun'

class ExampleTest < MiniTest::Test
  def test_xyz_from_downcase
    value = 'XYZ'

    assert_equal 'xyz', value.downcase
  end
end