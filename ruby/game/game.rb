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
  attr_reader :secret_word 
  attr_reader :counter
  attr_accessor :display_guess

  def initialize(word)
    puts "Game initialized"
    if word.downcase == nil
      @secret_word = word.split("")
    else
      @format_word = word.downcase
      @secret_word = @format_word.split("")
    end
    @display_guess = []
    @word_length = word.length
    index = 0
    while index < word.length
      display_guess << "_"
      index += 1
    end
    p display_guess
  end

  def check_guess(letter)
    if letter.downcase != nil
      @guess = letter.downcase
    end
    p @guess
    @max_guesses = secret_word.length + 3
    @previous_guesses = [] # list of letter guesses
    @guess_is_present = secret_word.include?(@guess)
    @already_guessed = @previous_guesses.include?(@guess)
    @counter = 0
    if @already_guessed == false # new guess with new letter
      @counter += 1
      @previous_guesses << @guess
      if @guess_is_present # checks letters
        index = 0
        puts "Nice guess!"
        while index < secret_word.count do
          p secret_word[index]
          if secret_word[index] == @guess
            @display_guess[index] = @guess
          end
          index +=1
        end
      else
        puts "Nope! Guess again."
      end
    else 
      puts "You already guessed that! Guess again!"
    end

    
    puts counter
    p @guess_list
    p display_guess.join
  end

end

game = Game.new("hooray")
game.check_guess('h')
game.check_guess('r')

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