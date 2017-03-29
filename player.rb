class Player
  attr_reader :gold_coins, :health_points, :lives

  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold_coins += 1
    if @gold_coins % 10
      :level_up
    end
  end

  def do_battle
    @health_points -= 1
    case :do_battle
    when @health_points == 0
      @lives -= 1
      @health_points = 10
    when @lives == 0
      :restart
    end
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end
end


puts jp = Player.new
puts jp.level_up
puts jp.collect_treasure
puts jp.gold_coins
puts jp.lives
puts jp.do_battle
puts jp.health_points
puts jp.lives
