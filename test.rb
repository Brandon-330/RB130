require 'minitest/autorun'

require_relative 'cat'

class CatTest < Minitest::Test
  def setup
    @kitty = Cat.new('Kitty')
  end

  def test_name
    assert_match(/a\./, 'a.bc')
  end

  def test_no_arg
    assert_raises do
      Cat.new('ok')
    end
  end
end