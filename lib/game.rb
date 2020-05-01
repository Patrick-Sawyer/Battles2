class Game

  attr_reader :players

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def player1
    @players[0]
  end

  def player2
    @players[1]
  end

  def attack(player)
    player.receive_damage
  end
end
