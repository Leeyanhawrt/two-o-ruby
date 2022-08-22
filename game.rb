require './question'

class Game 

  attr_accessor :player1, :player2, :currentplayer

  def initialize (player1, player2)
    @player1 = player1
    @player2 = player2
    @currentplayer = player1
  end

  def switchPlayer
    if @currentplayer == @player1
      self.currentplayer = player2
    else 
      self.currentplayer = player1
    end
  end
end