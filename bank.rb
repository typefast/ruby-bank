class BankAccount
  attr_reader :name
  
  def initialize(name)
    @name = name
    @transactions = []
    add_transaction("Start Balance", 0)
  end
  
  def credit(description, amount)
    add_transaction(description, amount)
  end
  
  def debit(description, amount)
    add_transaction(description, -amount)
  end
  
  def add_transaction(description, amount)
    @transactions.push(description: description, amount: amount)
  end
  
  def balance
    balance = 0.0
    @transactions.each do |transaction|
      balance += transaction[:amount]
    end
    return balance
  end
  
  def to_s
    "Name: #{name}, Balance: #{sprintf("%0.2f", balance)}"
  end
  
  def print_bank_balance
    puts "#{name}'s Bank Account"
    
    puts "Description".ljust(30) + "Amount".rjust(10)
    @transactions.each do |transaction|
      puts transaction[:description].ljust(30) + sprintf("%0.2f", 
      transaction[:amount]).rjust(10)
    end
    puts "Balance:".ljust(30) + sprintf("%0.2f", balance).rjust(10)
  end
end

bank_account = BankAccount.new("Richy")
bank_account.credit("Pocket Money", 1000)
bank_account.debit("Insurance", 300)
puts bank_account
puts "Bank Balance"
bank_account.print_bank_balance
