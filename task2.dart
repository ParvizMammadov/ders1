import 'dart:io';

main() {
  print('add number from 0 to 100');
  var choice = stdin.readLineSync()!;
  //while (true)
  // xeta yoxlanisi
  try {
    int choice2 = int.parse(choice);
    // reqem yazilisi xetasi
    if (choice2 < 0 || choice2 > 101) {
      print('wrong command,only from 0 to 100');
    } else {
      fibonacci(choice2);
    }
  } catch (e) {
    print('only numbers');
  }
}

void fibonacci(int n) {}
