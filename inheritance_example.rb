class Vehicle

  attr_reader :speed, :direction

  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

end

class Car < Vehicle

  attr_reader :fuel, :make, :model

  def initialize
    super
    @fuel = 'diesel'
    @make = 'Ford'
    @model = 'Bronco'
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle

  attr_reader :type, :weight

  def initialize
    super
    @type = 'Dirtbike'
    @weight = 200
  end

  def ring_bell
    puts "Ring ring!"
  end

end

car = Car.new()
bike = Bike.new()
car.accelerate
bike.accelerate
puts car.speed
puts bike.speed
car.honk_horn
bike.ring_bell

puts car.fuel
puts bike.weight