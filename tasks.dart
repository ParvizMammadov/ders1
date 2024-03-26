import 'dart:io';
import 'dart:math';

void main() {
  // Map to store game rules (key: user choice, value: beats)
  var rules = {
    'rock': 'scissors',
    'paper': 'rock',
    'scissors': 'paper',
  };

  // User score and computer score
  int userScore = 0;
  int computerScore = 0;

  while (true) {
    print('Rock, Paper, Scissors (or "exit" to quit):');
    var userInput = stdin.readLineSync()?.toLowerCase();

    if (userInput == 'exit') {
      break;
    }

    // Validate user input (not case-senexsitive)
    if (!rules.containsKey(userInput)) {
      print('Invalid choice. Please try again.');
      continue; // Skip to the next iteration
    }

    // Generate random computer choice
    var random = Random();
    var computerChoice = rules.keys.elementAt(random.nextInt(rules.length));

    // Check winner
    if (rules[userInput] == computerChoice) {
      userScore++;
      print('You win!');
    } else if (userInput == computerChoice) {
      print('It\'s a tie!');
    } else {
      computerScore++;
      print('Computer wins!');
    }

    print('Current score: You - $userScore, Computer - $computerScore');
    print('Play again? (y/n)');
    var playAgain = stdin.readLineSync()?.toLowerCase();

    if (playAgain != 'y') {
      break;
    }
  }

  print('Thanks for playing!');
}
