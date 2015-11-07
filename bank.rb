class BankAccount
  attr_reader :name
  
  def initialize(name)
    @name = name
    @transactions = []
  end
  
  def add_transaction(description, amount)
    @transactions.push(description: description, amount: amount)
  end
end

bank_account = BankAccount.new("Richy")
puts bank_account.inspect
bank_account.add_transaction("pocket money", 1000)
puts bank_account.inspect