class BankAccount

  attr_accessor :balance

  @@interest_rate = 0.10
  @@accounts = []

  def initialize(balance)
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def self.create
    new_account << @@accounts

  end


end


# puts jp = BankAccount.new(100, 0.10)
# puts jp.deposit(10)
# puts jp.withdraw(15)
# puts jp.gain_interest
