class Player 

attr_accessor :health, :name

  def initialize(name)
    @name = name
    @health = 3
  end

  def lose_round
    @health -= 1
    puts "#{name} You lost a health, your current health is #{health}/3"
  end
end



