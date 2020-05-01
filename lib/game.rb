class Game

  attr_reader :players, :number_of_goes

  def initialize(player1, player2)
    @players = [player1, player2]
    @number_of_goes = 0
  end

  def player1
    @players[0]
  end

  def player2
    @players[1]
  end

  def attack
    @number_of_goes.even? ? player2.receive_damage : player1.receive_damage
    @number_of_goes += 1
  end

  def who
    ((@number_of_goes % 2) == 0) ? player1 : player2
  end
end
