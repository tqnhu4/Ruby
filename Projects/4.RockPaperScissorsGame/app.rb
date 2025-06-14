# rock_paper_scissors.rb

# Define the possible game choices
CHOICES = ['rock', 'paper', 'scissors']

# Function to get the player's choice
def get_player_choice
  loop do
    puts "\nEnter your choice (rock, paper, or scissors):"
    choice = gets.chomp.downcase # Read input and convert to lowercase

    if CHOICES.include?(choice)
      return choice
    else
      puts "Invalid choice. Please choose from: #{CHOICES.join(', ')}"
    end
  end
end

# Function to get the computer's choice (randomly)
def get_computer_choice
  CHOICES.sample # .sample method picks a random element from an array
end

# Function to determine the winner
# Returns: 'player', 'computer', or 'tie'
def determine_winner(player_choice, computer_choice)
  puts "You chose: #{player_choice}"
  puts "Computer chose: #{computer_choice}"

  if player_choice == computer_choice
    return 'tie'
  elsif (player_choice == 'rock' && computer_choice == 'scissors') ||
        (player_choice == 'paper' && computer_choice == 'rock') ||
        (player_choice == 'scissors' && computer_choice == 'paper')
    return 'player'
  else
    return 'computer'
  end
end

# Main game loop
def play_game
  player_score = 0
  computer_score = 0

  puts "--- Welcome to Rock, Paper, Scissors! ---"

  loop do
    puts "\n--- Current Score ---"
    puts "Player: #{player_score} | Computer: #{computer_score}"
    puts "---------------------"

    player_choice = get_player_choice
    computer_choice = get_computer_choice

    winner = determine_winner(player_choice, computer_choice)

    case winner
    when 'player'
      puts "You win this round!"
      player_score += 1
    when 'computer'
      puts "Computer wins this round!"
      computer_score += 1
    when 'tie'
      puts "It's a tie!"
    end

    puts "\nDo you want to play again? (yes/no)"
    play_again = gets.chomp.downcase
    break unless play_again == 'yes'
  end

  puts "\n--- Final Score ---"
  puts "Player: #{player_score} | Computer: #{computer_score}"
  puts "-------------------"

  if player_score > computer_score
    puts "Congratulations! You won the game!"
  elsif computer_score > player_score
    puts "Better luck next time! The computer won the game."
  else
    puts "The game ended in a tie!"
  end

  puts "Thanks for playing!"
end

# Start the game
play_game