require_relative 'transaction'

class Account
  DEFAULT_BALANCE = 0

  def initialize(balance = DEFAULT_BALANCE)
    @balance = balance
  end

  def deposit(value)
    increase_balance(value)
  end

  def withdrawal(value)
    decrease_balance(value)
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
