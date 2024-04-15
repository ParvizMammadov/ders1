import 'dart:io';

void main() {
  namedF(30, 40, 50, 'devam', 'stop');
  namedD('good', 'bad', 22, 33);
}

void namedF(int birinci, int ikinci, int ununcu, String name, String name1) {
  while (true) {
    print('write your numb');
    var choice = stdin.readLineSync()!;
    int choice2 = int.parse(choice);
    if (choice2 >= ikinci) {
      print(name1);
      break;
    } else {
      print(name);
    }
  }
}

void namedD(String F, String D, int a, int b) {
  print('$F,$b');
}
