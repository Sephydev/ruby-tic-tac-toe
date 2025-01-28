# Manage the board
class Board
  attr_reader :cells

  def initialize
    @cells = Array.new(3) { Array.new(3, ' ') }
    @win = false
  end

  def display_board
    puts "\n  | A | B | C |\n---------------"

    @cells.each_with_index do |row, idx|
      row_str = "#{idx + 1} |"

      row.each do |cell|
        row_str += " #{cell} |"
      end

      puts "#{row_str}\n---------------"
    end
    puts "\n"
  end

  def modify_board(choice, player)
    @cells[choice[1].to_i - 1][choice[0].to_i - 1] = if player == 1
                                                       'O'
                                                     else
                                                       'X'
                                                     end
  end

  def check_win(board)
    return true if check_row(board)
    return true if check_column(board)

    check_diagonal(board)
  end

  private

  def check_row(board)
    return true if board.any? { |row| row.all? { |cell| cell.include?('O') } }

    return true if board.any? { |row| row.all? { |cell| cell.include?('X') } }

    false
  end

  def check_column(board)
    temp = [[], [], []]

    board.each do |row|
      temp[0] << row[0]
      temp[1] << row[1]
      temp[2] << row[2]
    end

    return true if temp.any? { |row| row.all? { |cell| cell.include?('O') } }
    return true if temp.any? { |row| row.all? { |cell| cell.include?('X') } }

    false
  end

  def check_diagonal(board)
    temp = [[], []]

    board.each_with_index do |row, idx|
      temp[0] << board[idx][idx]
      temp[1] << board[idx][row.length - idx - 1]
    end

    return true if temp.any? { |row| row.all? { |cell| cell.include?('O') } }
    return true if temp.any? { |row| row.all? { |cell| cell.include?('X') } }

    false
  end
end
