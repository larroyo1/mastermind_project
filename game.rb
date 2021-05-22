class Game
  def initialize
    @colors = ["r", "g", "b", "y"].sample.downcase(4)
  end

  def make_guess
    guess = gets.chomp
    puts "You guessed '#{guess}'"
  end

  def begin

    puts "I have generated a begginer sequence with four
elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow.
Use (q)uit at any time to end the game."
    puts "Whats your guess?"

    make_guess

  end

end
