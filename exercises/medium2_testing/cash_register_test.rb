require 'minitest/autorun'

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < MiniTest::Test
  def setup
    cash_register = CashRegister.new(0)
  end 

  def test_accept_money
    accept_money(100)
    assert_equals(@total_money, 100)
  end
end