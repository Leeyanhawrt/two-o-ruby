class Player 

attr_accessor :health, :name

  def initialize(name)
    @name = name
    @health = 3
  end

  def get_health
    "#{name} You lost a health, your current health is #{health}"
  end

  def lose_round
    @health -= 1
  end
end

player1 = Player.new("Ellissa")

