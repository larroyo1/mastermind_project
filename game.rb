#index guesses and @colors to have correct placement.
#fix code to allow multi-character guesses
class Game
  def initialize
    @colors = ["r", "g", "b", "y"].flat_map {|x| [x] * 4}.sample(4) #flat_map returns new array with results of following code block for each value.
    @tries = 10
    @correct_guesses = []
  end

  def make_guess
    if @tries > 0
      guess = gets.chomp
      puts "You guessed '#{guess}'"

      correct = @colors.include? guess
      if correct
        puts "Correct!"
        @correct_guesses << guess
        make_guess
      else
        @tries -= 1
        puts "Sorry you have #{@tries} guesses left. Try again."
        make_guess
      end
    else
      puts "Game Over. Better luck next time!"
    end
  end


  def begin

    puts "I have generated a begginer sequence with four
elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow.
Use (q)uit at any time to end the game."
    puts "Whats your guess?"

    make_guess

  end

end
