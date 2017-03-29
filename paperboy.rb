class Paperboy

  attr_reader :name, :earnings
  attr_accessor :experience

  def initialize(name, experience, earnings)
    @name = name
    @experience = experience
    @earnings = earnings
  end

  def quota
    quota = 50 + (@experience * 0.5)
  end

  def deliver(start_address, end_address)
    @experience = end_address - start_address
    if quota <= 50
      @earnings = @experience * 0.25
      @experience += deliver
    else
      @earnings = quota * 0.25

    end

  end


end

jp = Paperboy.new("JP", 0, 0)
# puts jp.deliver(1, 51)
# puts jp.experience
puts jp.quota
