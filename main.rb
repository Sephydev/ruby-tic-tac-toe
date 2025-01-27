require_relative 'lib/board'
require_relative 'lib/player'

board = Board.new
player1 = Player.new(1)
player2 = Player.new(2)

board.display_board

player1.set_choice

board.modify_board(player1.choice, 1)
board.display_board

player2.set_choice
board.modify_board(player2.choice, 2)
board.display_board
