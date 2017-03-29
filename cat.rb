class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time < 12
      "#{@meal_time} AM"
    elsif @meal_time > 12
      "#{@meal_time - 12} PM"
    else
      "#{@meal_time} NN"
    end
  end

  def meow
    puts "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
  end

end


puts roger = Cat.new("Roger", "fish", 14)
puts ash = Cat.new("Ash", "steak", 11)
puts sara = Cat.new("Sara", "bbq", 12)

puts ash.eats_at
puts roger.eats_at
puts sara.eats_at

puts roger.meow
puts ash.meow
puts sara.meow
