class Paperboy

  attr_reader :name, :earnings
  attr_accessor :experience

  def initialize(name, experience, earnings)
    @name = name
    @experience = experience
    @earnings = earnings
    @quota = 50
  end


  def deliver(start_address, end_address)
    @experience = end_address - start_address
    if @experience == @quota
      @earnings = @experience * 0.25
    elsif @experience > @quota
      @earnings = (@quota * 0.25) + ((@experience - @quota) * 0.50)
    else
      @earnings = (@experience * 0.25) - 2
    end
    @quota = @experience + (@experience * 0.5)
  end
end

jp = Paperboy.new("JP", 0, 0)
puts jp.experience
jp.deliver(1, 51)
jp.deliver(1, 101)
