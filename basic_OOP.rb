module Weight
  def weight(n) 
    if n >= 	3997 
      "its a truck"
    end
    "its a car"
  end
end

class Vehicle
  TYPE = "vehicle"
  @@vehicle_count = 0

  def initialize 
  @@vehicle_count += 1
  end
  
  def self.total_vehicles
    "total number is #{@@vehicle_count}"
  end
end


  class MyTruck < Vehicle
    TYPE = "truck"
    include Weight
  end

class MyCar < Vehicle
  attr_accessor :year, :color, :model

  TYPE = "car"

  def initialize (year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def speed_up (num)
    @speed += num
    "speed has increased by #{num} Kms"
  end
  
  def brake (num)
    @speed -= num
    "speed has decreased by #{num} Kms"
  end

  def shut_off 
    @speed = 0
    "car has shut down"
  end

  def change_info (y, c, m)
    self.year = y
    self.color = c
    self.model = m
  end

  def info
    "the year is #{year}, the color is #{color}, the model is #{model}"
  end

  def spray_paint(color)
    self.color = color
    "color changed to #{color}"
  end

  def self.gas_mileage (gallon, miles)
    puts "#{miles / gallon} miles per gallon of gas"
  end

  def to_s 
    "My car is a #{color}, #{year}, #{@model}!"
  end
end

# Test code

puts Vehicle.total_vehicles  