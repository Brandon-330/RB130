require 'minitest/autorun'

class ExampleTest < MiniTest::Test
  def test_xyz_elements
    list = ['xyz']

    refute_includes list, 'xyz'
  end
end