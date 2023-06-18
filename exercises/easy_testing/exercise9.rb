require 'minitest/autorun'

class List
  def processes
    List.new
  end
end

class ExampleTest < MiniTest::Test
  def test_list_and_return_of_list_same_object
    list = List.new

    assert_same list.class, list.processes.class
  end
end