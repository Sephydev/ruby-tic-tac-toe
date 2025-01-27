# Manage the board
class Board
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
    if player == 1
      @cells[choice[0].to_i - 1][choice[1].to_i - 1] = 'O'
    end
  end
end
