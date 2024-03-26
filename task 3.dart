import 'dart:io';

void main() {
  print('add any word');
  var choice = stdin.readLineSync()!.toLowerCase();
  var reversed = choice.split('').reversed.toList().join().toLowerCase();

  if (choice == reversed) {
    print('isPoligrome');
  } else {
    print('is not Poligrome');
  }
}
