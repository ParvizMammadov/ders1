import 'dart:io';

void main() {
  Map<String, double> shoppingList = {
    'samsung': 399.99,
    'iphone': 1099.99,
    'notebook': 2099.99,
    'tv': 4099.99
  };

  while (true) {
    print('select: \n 1 by guest \n 2 by login');
    var choice = stdin.readLineSync()!;
    switch (choice) {
      case '2':
        print('enter your name and password');
        var name = stdin.readLineSync()!;
        var pass = int.parse(stdin.readLineSync()!);

      case '1':
        print('your entered like guest');
    }

    print(shoppingList);
    var choice2 = stdin.readLineSync()!;
    switch (choice2) {
      case 'samsung':
      case 'iphoe':
      case 'notebook':
      case 'tv':
    }
    print('select payment  \n 1:  by cash \n 2: by card');

    var choice3 = stdin.readLineSync()!;
    switch (choice3) {
      case '1':
        print('select \n 1: by yourself \2 2: by delievery');
        var choice4 = stdin.readLineSync()!;

        switch (choice4) {
          case '1':
            print('$choice2');
          case '2':
            print('$choice2 + 10azn');
        }
      case '2':
        print('select: \n 1: by birbasha \n 2: by credit');
        var choice5 = stdin.readLineSync()!;
        switch (choice5) {
          case '1':
            print('$choice2');
          case '2':
            print('select bank \n 1 : Birkart \n 2: Tamkart \n 3: Bolkart ');
            var choice6 = stdin.readLineSync()!;
            switch (choice6) {
              case '1':
                print(
                    'select payment method by month \n 1: 3 \n 2: 6 \n 3: 12 \n4: 18');

                print('thanks for shopping');
            }

            switch (choice6) {
              case '2':
                print(
                    'choise your payment method by month \n 1: 3  \n 2 : 6 \n 3 : 12 ');
                var choice8 = stdin.readLineSync()!;
                switch (choice8) {
                  case '3':
                    print('$choice2 + 20% thanks for shopping');

                    switch (choice6) {
                      case '3':
                        print('choise your payment for month \n 1 : 3 \n2 : 6');
                        var choice9 = stdin.readLineSync()!;
                        switch (choice9) {
                          case '2':
                            print('$choice2 + 10 azn for everyday');
                        }
                    }
                }
            }
        }
    }
  }
}
