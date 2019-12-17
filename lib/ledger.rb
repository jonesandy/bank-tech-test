class Ledger

  def initialize
    @transaction_history = []
  end

  def add_transaction(transaction)
    @transaction_history << transaction
  end

  def return_transaction_history
    return @transaction_history
  end

end
