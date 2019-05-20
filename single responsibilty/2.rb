class Game
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class GamePriceService
  attr_accessor :game

  BASE_URL = "http://someurl/api/v1/"
  API_KEY  = "j1bxdm02j"


  def initialize(game)
    self.game = game
  end

  def get_price
    data = open("#{BASE_URL}/#{game.name}/price?api_key=#{API_KEY}")
    JsonParserLib.parse(data)
  end
end

class GamePresenter
  attr_accessor :game

  def initialize(game)
    self.game = game
  end

  def print
    price_service = GamePriceService.new(game)
    <<-EOF
      To play #{game.name}
      current value is #{price_service.get_price[:value]}
    EOF
  end
end






