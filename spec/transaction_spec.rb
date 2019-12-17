require 'transaction'

describe Transaction do

  it 'creates a new transaction' do
    transaction = Transaction.new(1000, "", 1000)
    expect(transaction.transaction[1]).to eq(1000)
  end
  
end
