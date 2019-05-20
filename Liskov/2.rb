# Violates Principle

class LivingBeing
  def talk
    ''
  end

  def height
    ''
  end
end

class Animal < LivingBeing
  def talk
    ''
  end

  def height
    '1.29m'
  end
end

class Human < LivingBeing
  def talk
    'Hello!'
  end

  def height
    {man: '1.70m', woman: '1.4m'}
  end
end

animal = Animal.new
animal.height
# violate liskovs principle
Human.new.height


