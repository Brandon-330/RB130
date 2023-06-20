require 'minitest/autorun'

require_relative 'text'

class TextTest < Minitest::Test
  def setup
    @file = File.open('text.txt', 'r')
    @text = Text.new(@file.read)
  end

  def test_swap
    swap('a', 'e')
  end 

  def teardown
    @file.close
  end
end