require 'minitest/autorun'

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < MiniTest::Test
  def setup
    @cash_register = CashRegister.new(1000)
    @transaction = Transaction.new(100)
    @transaction.amount_paid = 150
  end 

  def test_accept_money
    @cash_register.accept_money(@transaction)
    assert_equal(@cash_register.total_money, 1150)
  end

  def test_change
    assert_equal(@cash_register.change(@transaction), 50)
    @transaction.amount_paid = 50
  end

  def test_give_receipt
    assert_output("You've paid $100.\n") { @cash_register.give_receipt(@transaction) }
    assert_nil(@cash_register.give_receipt(@transaction))
  end
end