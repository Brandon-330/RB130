require 'minitest/autorun'

class ExampleTest < MiniTest::Test
  def test_if_xyz_in_array_list
    list = ['xyz', 2, 3]

    refute_includes list, 'xyz'
  end
end