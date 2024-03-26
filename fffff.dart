import 'dart:io';
import 'dart:math';

void main() {
  print('add your number');
  var choice = stdin.readLineSync()!;
  var number = int.parse(choice);
  var factorial = 1;

  for (var i = 1; i <= number; i++) {
    factorial *= i;
  }
  print('factorial of $number: $factorial');

  List<int> a = [];

  List<int> a1 = [];

  for (var i = 1; i <= number; i++) {
    if (i % 2 == 0) {
      a.add(i);
    } else {
      a1.add(i);
    }

    print('cut:$a tek:$a1.');
  }
}
