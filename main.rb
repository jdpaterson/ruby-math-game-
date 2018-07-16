require './player.rb'
require './game.rb'
require './question.rb'

# Instantiate 2 players
# Instantiate Game
player1 = Player.new('Player 1')
player2 = Player.new('Player 2')
game = Game.new(player1, player2)

game.askQuestion
#puts player1.lives
