# Manage the board
class Board
  def initialize
    @cells = Array.new(3, Array.new(3, ' '))
  end

  def display_board
    puts '  | A | B | C |'
    puts '---------------'

    @cells.each_with_index do |row, idx|
      row_str = "#{idx + 1} |"

      row.each do |cell|
        row_str += " #{cell} |"
      end

      puts row_str
      puts '---------------'
    end
  end
end
