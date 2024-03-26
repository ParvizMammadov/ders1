import 'dart:io';
import 'dart:math';

void main() {
  // Store the rules of the game in a Map
  Map<String, String> rules = {
    'rock': 'scissors',
    'scissors': 'paper',
    'paper': 'rock',
  };

  // Initialize scores
  int userScore = 0;
  int computerScore = 0;

  // Infinite loop until the user types "exit"
  while (true) {
    // Get user input
    print('Enter your choice (rock, paper, scissors), or type "exit" to quit:');
    String userChoice = getUserChoice();

    // Check if the user wants to exit
    if (userChoice == 'exit') {
      break;
    }

    // Generate random computer choice
    String computerChoice = getComputerChoice();

    // Print user and computer choices
    print('You chose: $userChoice');
    print('Computer chose: $computerChoice');

    // Determine the winner
    if (userChoice == computerChoice) {
      print('It\'s a tie!');
    } else if (rules[userChoice] == computerChoice) {
      print('You win!');
      userScore++;
    } else {
      print('Computer wins!');
      computerScore++;
    }

    // Print total score
    print('Score: Computer $computerScore - $userScore User');
  }

  print('Exiting the game. Goodbye!');
}

// Function to get user input with error handling
String getUserChoice() {
  String? userInput = stdin.readLineSync();
  if (userInput != null &&
      ['rock', 'paper', 'scissors', 'exit'].contains(userInput.toLowerCase())) {
    return userInput.toLowerCase();
  } else {
    print('You made a wrong choice, enter again:');
    return getUserChoice();
  }
}

// Function to generate computer's choice
String getComputerChoice() {
  List<String> choices = ['rock', 'paper', 'scissors'];
  Random random = Random();
  return choices[random.nextInt(choices.length)];
}
