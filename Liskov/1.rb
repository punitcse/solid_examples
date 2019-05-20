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
    'Bhoo!'
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
    '1.70m'
  end
end


