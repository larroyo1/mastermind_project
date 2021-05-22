require "./lib/game"

class Menu

  def get_input(message)
  puts message
    @input = gets.chomp
    if @input == "i"
      instructions

    elsif @input == "p"
      game = Game.new
      game.begin

    elsif @input == "q"
      puts "Quitting..."
    end

    end


    def instructions
      puts "You are the 'Decoder'. Your job is to guess the combination of colors
in under 10 tries. You will get a hint after every guess and the game
