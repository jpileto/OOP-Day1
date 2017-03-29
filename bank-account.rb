class BankAccount

  def initialize(balance, interest_rate)
    @balance = balance
    @interest_rate = interest_rate
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def gain_interest
    @balance = (@balance * @interest_rate) + @balance
  end


end


puts jp = BankAccount.new(100, 0.10)
puts jp.deposit(10)
puts jp.withdraw(15)
puts jp.gain_interest
