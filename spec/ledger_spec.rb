require 'ledger'

describe Ledger do
  
  subject(:ledger) { Ledger.new }

  it 'creates a record' do
    ledger.add_transaction(["14/01/2012", "", 500.00, 2500.00])
    expect(ledger.return_transaction_history.length).to eq(1)
  end

  it 'returns array of arrays' do
    ledger.add_transaction(["14/01/2012", "", 500.00, 2500.00])
    ledger.add_transaction(["13/01/2012", 2000.00, "", 3000.00])
    expect(ledger.return_transaction_history).to eq([
    ["14/01/2012", "", 500.00, 2500.00],
    ["13/01/2012", 2000.00, "", 3000.00]
  ])
  end

end
