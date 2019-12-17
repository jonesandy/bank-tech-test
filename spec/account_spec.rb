require 'account'

describe Account do
  
  context 'making a deposit' do

    subject(:account) { Account.new }

    it 'should have balance of 1000' do
      account.deposit(1000)
      expect(account.balance).to eq(1000)
    end
    
  end
end
