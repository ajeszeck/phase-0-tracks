# One user enters word

# Another user guesses the word

# Limited guesses, related to word length
# Repeat guesses don't count
# Guessing player gets continual feedback
# Congratulates on win, taunts on lose

# ***** PSUEDOCODE *****

# def initialize
  # Initialize with word from user input
  # Make it all lowercase
  # Stores as an array
  # Initializes a seperate empty array for storing guess feedback

class Game
  attr_reader :secret_word, :counter, :max_guesses 
  attr_accessor :display_guess
  attr_accessor :previous_guesses

  def initialize(word)
    puts "Game initialized"
    if word.downcase == nil
      @secret_word = word.split("")
    else
      @format_word = word.downcase
      @secret_word = @format_word.split("")
    end
    @display_guess = [] # Visual output
    @previous_guesses = [] # list of letter guesses
    index = 0
    while index < word.length
      display_guess << "_"
      index += 1
    end
  end

# def check_guess
  # Takes user input letter and compares it to guess word's array
  # Input: letter string
  # Steps:
    # check whether letter exists in array
    # if it does, add the letter(s) into the visual array output
    # if not, return some statement about wrong guess
    # Check to make sure guesses with multiple occurances work
  # Output: visual string of unknown word guess

  def check_guess(letter)
    if letter.downcase != nil
      @guess = letter.downcase
    end
    @guess_is_present = secret_word.include?(@guess)
    @already_guessed = @previous_guesses.include?(@guess)
        @previous_guesses << @guess
        if @guess_is_present # checks letters
          index = 0
          # puts "Nice guess!"
          while index < secret_word.count do
            if secret_word[index] == @guess
              @display_guess[index] = @guess
            end
            index +=1
          end
        else
          puts "Nope! Guess again."
        end
    p display_guess.join
  end
end

# *** DRIVER CODE ****
puts "User 1: Enter a word."
secret = gets.chomp

guess_count = 0
max_guesses = secret.length + 1

game = Game.new(secret)

until game.secret_word == game.display_guess || guess_count == max_guesses
  current_count = max_guesses - guess_count
  puts "User 2: You have #{current_count} guesses remaining."
  puts "Enter a letter."
  guess = gets.chomp
  if game.previous_guesses.include?(guess)
    puts "You already guessed that, guess again."
  else
    guess_count += 1
    game.check_guess(guess)
  end
end

if game.secret_word == game.display_guess 
  puts "You win! You got the word in #{guess_count} guesses!"
else 
  puts "You lose! You ran out of guesses. Better luck next time."
end

# Driver code stuff
  # input: counter, correct word
  # steps: 
    # if win: display 'You got the word in #{counter} guesses'
    # if lose: display 'you lose. whomp whomp' or something