require 'account'

describe Account do
  
  before(:each) do
    @account = Account.new
    @account.deposit(1000)
  end

  context 'making a deposit' do
    it 'should have balance of 1000' do
      expect(@account.balance).to eq(1000)
    end

  end

  context 'making a withdrawal' do
    it 'should have a balance of 500' do
      @account.withdrawal(500)
      expect(@account.balance).to eq(500)
    end

  end

end
