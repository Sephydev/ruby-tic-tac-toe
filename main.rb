require_relative 'lib/board'
require_relative 'lib/player'

board = Board.new
player1 = Player.new(1)
player2 = Player.new(2)
win = false
round = 1

board.display_board

while win != true
  player1.get_choice(board.cells)

  board.modify_board(player1.choice, 1)
  board.display_board

  if round > 2 && board.check_win(board.cells)
    puts 'The winner is : Player 1!'
    break
  end

  player2.get_choice(board.cells)
  board.modify_board(player2.choice, 2)
  board.display_board

  if round > 2 && board.check_win(board.cells)
    puts 'The winner is : Player 2!'
    break
  end

  round += 1
end
