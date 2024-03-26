import 'dart:io';

void main() {
  Map<String, int> products = {
    'Banana': 1,
    'Apple': 2,
    'bear': 3,
    'bread': 4,
    'wine': 5
  };
  List<String> mustBuy = [
    'orange',
    'pinaple',
    'wine',
  ];

  while (true) {
    print(
        'choice \n 1: add product \n 2: delete the product \n 3: show the list \n 4: exit');
    String choice = stdin.readLineSync()!;
    switch (choice) {
      case '1':
        print('add product name');
        String elaveMehsul = (stdin.readLineSync()!);

        mustBuy.add(elaveMehsul);
        print('product added');

      case '2':
        print('select the product for delete');
        String deleted = (stdin.readLineSync()!);
        mustBuy.remove(deleted);
        print('product removed');

      case '3':
        print('Shopping list' '\n$mustBuy');

      case '4':
        print('finish');
        return;

      default:
        print('inccorect command');
    }
  }
}
