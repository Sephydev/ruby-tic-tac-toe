# Manage the player
class Player
  attr_reader :choice

  def initialize
    @choice
  end

  def set_choice
    loop do
      puts "Player 1, please input the cell you've chosen:"
      choice_to_check = gets.chomp.downcase

      puts "Player 1 inputted: #{choice_to_check}"

      if ('a'..'c').include?(choice_to_check[0]) && ('1'..'3').include?(choice_to_check[1])
        @choice = choice_to_check
        break
      end
    end
  end
end
