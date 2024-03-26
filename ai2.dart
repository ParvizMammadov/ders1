import 'dart:io';

void main() {
  print('birinci reqemi yazin');
  double num1 = double.parse(stdin.readLineSync()!);
  print('emeliyyati secin (+,-,*,/ )');
  String emeliyyat = stdin.readLineSync()!;
  print('ikinci reqemi elave edin');
  double num2 = double.parse(stdin.readLineSync()!);
  switch (emeliyyat) {
    case '+':
      print('netice: ${num1 + num2}');
    case '-':
      print('netice: ${num1 - num2}');
    case '*':
      print('netice: ${num1 * num2}');
    case '/':
      if (num2 != 0) {
        print('netice: ${num1 / num2}');
      } else {
        print('yalnis emeliyyat');
      }
    default:
      print('yalnis emeliyyat');
  }
}
