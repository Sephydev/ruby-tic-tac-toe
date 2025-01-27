require_relative 'lib/board'
require_relative 'lib/player'

board = Board.new

board.display_board

player1 = Player.new

player1.set_choice

player1.choice

board.modify_board(player1.choice, 1)
board.display_board
