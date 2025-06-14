# Ruby Rock, Paper, Scissors Game
A simple command-line interface (CLI) game of Rock, Paper, Scissors, implemented in Ruby. Play against the computer and see who wins!

## Features
- Player vs. Computer: Engage in a classic game against the computer.

- Score Tracking: Keeps track of the player's and computer's scores across multiple rounds.

- Input Validation: Ensures the player enters a valid choice (rock, paper, or scissors).

- Multiple Rounds: Play as many rounds as you like, with an option to continue or quit after each round.

- Clear Winner Declaration: Announces the winner of each round and the overall game.

## Prerequisites
To run this application, you need to have Ruby installed on your system.

- Install Ruby:

  - macOS (pre-installed, or via Homebrew): brew install ruby

  - Ubuntu/Debian: sudo apt-get update && sudo apt-get install ruby-full

  - Windows: Use RubyInstaller for Windows.

## How to Run
- Save the Code: Save the provided Ruby code into a file named rock_paper_scissors.rb.

- Open Terminal/Command Prompt: Navigate to the directory where you saved rock_paper_scissors.rb.

- Execute the Game:  

```text
ruby app.rb
```

## Gameplay
- When you run the script, the game will welcome you and display the current score (initially 0-0).

- You will be prompted to "Enter your choice (rock, paper, or scissors):".

- Type your choice and press Enter.

- The computer will then make its choice, and the winner of the round will be announced.

- The scores will update, and you'll be asked if you want to play again.

- Type yes to play another round, or no to end the game.

- The game will conclude by displaying the final scores and the overall game winner.

## How It Works
The game logic is structured around a few key functions:

- CHOICES: An array holds the valid game options.

- get_player_choice: Prompts the user for input and uses a loop to ensure a valid choice is entered.

- get_computer_choice: Randomly selects one of the CHOICES using Ruby's Array#sample method.

- determine_winner(player_choice, computer_choice): Contains the core game rules to compare the player's and computer's choices and declare the winner of the round.

- play_game: This is the main function that orchestrates the game. It initializes scores, runs the game loop (allowing multiple rounds), calls the other functions to get choices and determine the winner, updates scores, and finally announces the overall game result.