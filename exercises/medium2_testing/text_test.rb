require 'minitest/autorun'

require_relative 'text'

class TextTest < MiniTest::Test
  def setup
    @file = File.new('text.txt', 'r')
    @text = Text.new(@file.read)
  end

  def test_swap
  end

  def test_word_count
    assert_equal 72, @text.word_count
  end

  def teardown
    @file.close
  end
end