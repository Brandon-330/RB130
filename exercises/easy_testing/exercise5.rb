require 'minitest/autorun'

class ExampleTest < Minitest::Test
  def test_list_no_xyz
    list = ['xyz', 'abc']
    assert_includes(list, 'xyz')
  end
end