require './player'
require './game'
require './question'

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
game = Game.new(player1, player2)
question = Question.new()

while player1.health > 0 && player2.health > 0
puts "----- NEW TURN -----"
# if game.player1
currentplayer = game.currentplayer
  print "#{currentplayer.name}: " 
  question.query_question

  if question.result
    puts "#{currentplayer.name}: YES! You are correct."
    game.switchPlayer

  else 
    currentplayer.lose_round
    game.switchPlayer
  end

# else
#   print "Player 2: "
#   question.query_question

#   if question.result
#     puts "Player 2: YES! You are correct."
#     game.switchPlayer
#   else 

#     player2.lose_round
#     game.switchPlayer
#   end
# end


end

if player1.health == 0
  puts "Player 2 wins with a score of #{player2.health}/3"
else 
  puts "Player 1 wins with a score of #{player1.health}/3"
end
puts "----- END GAME -----"

