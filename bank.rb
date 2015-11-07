class BankAccount
  def initialize(name)
    @name = name
    @transactions = []
  end
  
  
end

bank_account = BankAccount.new("Richy")
puts bank_account.inspect