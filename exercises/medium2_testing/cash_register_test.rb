require 'minitest/autorun'

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < MiniTest::Test
  def setup 
    @cash_register = CashRegister.new(5000)
    @transaction = Transaction.new(200)
  end

  def test_accept_money
    @transaction.amount_paid = 500
    @cash_register.accept_money(@transaction)
    assert_equal 5500, @cash_register.total_money
  end

  def test_change
    @transaction.amount_paid = 300
    assert_equal 100, @cash_register.change(@transaction)
  end

  def test_give_receipt
    assert_output("You've paid $200.\n") { @cash_register.give_receipt(@transaction) }
    assert_nil @cash_register.give_receipt(@transaction)
  end
end

class TransactionTest < MiniTest::Test
  private

  def test_prompt_for_payment
    transaction = Transaction.new(200)
    input = StringIO.new("210\n")
    transaction.prompt_for_payment(input: input)
    assert_equal 210, transaction.amount_paid
  end
end