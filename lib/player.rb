# Manage the player
class Player
  attr_reader :choice, :player_id

  def initialize(player_id)
    @player_id = player_id
  end

  def get_choice(board)
    loop do
      puts "Player #{@player_id}, please input the cell you've chosen:"
      choice = translate_choice(gets.chomp.downcase)

      next unless check_choice(choice, board)

      @choice = choice
      break
    end
  end

  private

  def translate_choice(choice)
    choice.reverse! if ('a'..'c').include?(choice[1])
    choice.sub! 'a', '1'
    choice.sub! 'b', '2'
    choice.sub! 'c', '3'
    choice
  end

  def check_choice(choice, board)
    arr = choice.split('').map(&:to_i)
    arr.all? { |digit| (1..3).include?(digit) } &&
      !(board[arr[1] - 1][arr[0] - 1].include?('O') ||
      board[arr[1] - 1][arr[0] - 1].include?('X'))
  end
end
