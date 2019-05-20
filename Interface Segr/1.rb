class Car
  def open_door
    ..
  end

  def close_door
    ..
  end

  def change_engine
    ..
  end
end

class Driver
  def drive
    Car.new.open_door
    Car.new.close_door
  end
end

class Mechanic
  def repair
    Car.new.change_engine
  end
end



