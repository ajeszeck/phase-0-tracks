# One user enters word

# Another user guesses the word

# Limited guesses, related to word length
# Repeat guesses don't count
# Guessing player gets continual feedback
# Congratulates on win, taunts on lose

# ***** PSUEDOCODE *****

# def initialize
  # Initialize with word from user input
  # Stores as an array
  # Initializes a seperate empty array for storing guess feedback

class Game
  attr_reader :word
  attr_accessor :word_guess

  def initialize(word)
    puts "Game initialized"
    @word = word.split("")
    @word_guess = []
    @word_length = word.length
    index = 0
    while index < word.length
      word_guess << "_"
      index += 1
    end
    p word_guess
  end

  def check_guess(letter)
    @guess_index = word.index(letter)
    if @guess_index == "nil"
      puts "Guess again!"
    else 
      word_guess[@guess_index] = letter
    end
    puts word_guess
  end

end

game = Game.new("Hooray")
game.check_guess('o')
# def check_guess
  # Takes user input letter and compares it to guess word's array
  # Input: letter string
  # Steps:
    # check whether letter exists in array
    # if it does, add the letter(s) into the visual array output
    # if not, return some statement about wrong guess
    # Increment guess counter
  # Output: visual string of unknown word guess

# def end_of_game
  # input: counter, correct word
  # steps: 
    # if win: display 'You got the word in #{counter} guesses'
    # if lose: display 'you lose. whomp whomp' or something


# *** NOTES ***
# - Need to account for the same letter being in the word twice