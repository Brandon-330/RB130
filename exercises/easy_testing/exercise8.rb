require 'minitest/autorun'

class Testing < MiniTest::Test
  value = Float
  assert_kind_of Numeric, Float
end