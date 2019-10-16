class Player
  DEFAULT_HEALTH = 60
  attr_reader :name, :hit_points

  def initialize(name, hitpoints = DEFAULT_HEALTH)
    @name = name
    @hit_points = hitpoints
  end

  def attack(player2)
    player2.receive_damage
  end

  def receive_damage
    @hit_points -= 10
  end

end
