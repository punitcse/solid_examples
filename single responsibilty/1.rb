class Game
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def get_price
    data = open("#{BASE_URL}/#{name}/price?api_key=#{API_KEY}")
    JsonParserLib.parse(data)
  end

  def print
    <<-EOF
      To play #{name}
      current value is #{get_price}
    EOF
  end
end








