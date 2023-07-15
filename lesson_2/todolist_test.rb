require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

require_relative 'todolist'

class TodoListTest < MiniTest::Test

  def setup
    @todo1 = Todo.new("Buy milk")
    @todo2 = Todo.new("Clean room")
    @todo3 = Todo.new("Go to gym")
    @todos = [@todo1, @todo2, @todo3]

    @list = TodoList.new("Today's Todos")
    @list.add(@todo1)
    @list.add(@todo2)
    @list.add(@todo3)
  end

  def test_to_a
    assert_equal @todos, @list.to_a
  end

  def test_size
    assert_equal 3, @list.size
  end

  def test_first
    assert_equal @todo1, @list.first
  end

  def test_last
    assert_equal @todo3, @list.last
  end

  def test_shift
    assert_equal @todo1, @list.shift
    assert_equal 2, @list.size
  end

  def test_pop 
    assert_equal @todo3, @list.pop
    assert_equal 2, @list.size
  end

  def test_done?
    assert_equal false, @list.done?
    @list.done!
    assert_equal true, @list.done?
  end

  def test_adding_not_todo
    assert_raises TypeError do
      @list.add 'Hello'
    end
  end
  
  def test_add_alias
    todo4 = Todo.new('Do chores')
    @list << todo4
    assert_equal todo4, @list.last
    assert_equal 4, @list.size
  end

  def test_test_item_at
    assert_raises (IndexError) { @list.item_at(4) }

    assert_equal @todo3, @list.item_at(2)
  end

  def test_mark_done_at
    assert_raises(IndexError) { @list.mark_done_at(4) }

    @list.mark_done_at(0)
    assert @todo1.done?
  end

  def test_mark_undone_at
    assert_raises(IndexError) { @list.mark_undone_at(4) }

    @todo1.done!
    assert @todo1.done?

    @list.mark_undone_at(0)
    refute @todo1.done?
  end

  def test_done!
    @list.done!
    assert @todo1.done?
    assert @todo2.done?
    assert @todo3.done?
  end

  def test_remove_at
    assert_equal @todo3, @list.remove_at(2)
    assert_equal 2, @list.size
  end

  def test_to_s
    output = <<~OUTPUT.chomp
    ---- Today's Todos ----
    [ ] Buy milk
    [ ] Clean room
    [ ] Go to gym
    OUTPUT

    assert_equal output, @list.to_s
  end

  def test_each
    assert_equal @list, @list.each { |todo| todo }
    idx = 0
    @list.each { |_| idx += 1 }
    assert_equal idx, @list.size
  end

  def test_select
    assert_equal
  end
end