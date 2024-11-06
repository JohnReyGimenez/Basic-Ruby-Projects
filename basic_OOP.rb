class MyCar 
  attr_accessor :year, :color, :model

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
    self.year = year
    self.color = color
    self.model = model
  end

  def info
    "the year is #{year}, the color is #{color}, the model is #{model}"
  end
end

donda = MyCar.new("2001", "black", "new")
puts donda.shut_off
puts donda.speed_up(3)
donda.change_info('2020', 'red', 'old')
puts donda.info   