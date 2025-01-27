# Manage the player
class Player
  attr_reader :choice, :player_id

  def initialize(player_id)
    @player_id = player_id
  end

  def set_choice
    loop do
      puts "Player #{@player_id}, please input the cell you've chosen:"
      choice_to_check = gets.chomp.downcase

      choice_to_check = translate_choice(choice_to_check)

      if ('1'..'3').include?(choice_to_check[0]) && ('1'..'3').include?(choice_to_check[1])
        @choice = choice_to_check
        break
      end
    end
  end

  private

  def translate_choice(choice)
    choice.sub! 'a', '1'
    choice.sub! 'b', '2'
    choice.sub! 'c', '3'
    choice
  end
end
