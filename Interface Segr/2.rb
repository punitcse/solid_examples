class Car
  def open_door
    ..
  end

  def close_door
    ..
  end
end

class CarInternal
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
    CarInternal.new.change_engine
  end
end



