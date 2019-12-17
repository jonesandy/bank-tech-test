class Transaction

  attr_reader :transaction

  def initialize(credit, debit, balance)
    @transaction = [Time.new.strftime("%d/%m/%Y"),
    credit,
    debit, 
    balance]
  end

end
