class Game
  def initialize
    @colors = ["r", "g", "b", "y"].sample(4)
    @tries = 10
  end

  def make_guess
    guess = gets.chomp
    puts "You guessed '#{guess}'"

    correct = @colors.include? guess

    if correct
      puts "Correct!"
    else
      @tries -= 1
      puts "Sorry you have #{@tries} guesses left. Try again."
      make_guess
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
