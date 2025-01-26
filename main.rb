require_relative 'lib/board'
require_relative 'lib/player'

board = Board.new

board.display_board

player1 = Player.new

puts "Player 1, please input the cell you've chosen:"
player1.choice = gets.chomp

puts "Player 1 inputted: #{player1.choice}"
