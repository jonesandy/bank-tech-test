require_relative 'transaction'
require_relative 'ledger'
require_relative 'display'

class Account
  DEFAULT_BALANCE = 0

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
    @ledger = Ledger.new
  end

  def deposit(value)
    increase_balance(value)
    transaction = Transaction.new(value, 0, @balance)
    @ledger.add_transaction(transaction)
  end

  def withdrawal(value)
    decrease_balance(value)
    transaction = Transaction.new(0, value, @balance)
    @ledger.add_transaction(transaction)
  end

  def balance
    @balance
  end

  private

  def increase_balance(value)
    @balance += value
  end

  def decrease_balance(value)
    @balance -= value
  end

end
