class Game

  attr_reader :current_turn, :other_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
    @other_turn = player_2
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def switch_turns
    @current_turn = opponent(@current_turn)
    @other_turn = opponent(@other_turn)
  end



  def attack(player2)
    player2.receive_damage
  end

  private
  def opponent(the_player)
    @players.select { |player| player != the_player }.first
  end

end
