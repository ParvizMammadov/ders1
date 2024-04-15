// istifadeciden bir  reqem daxil etmesini teleb eden program yaradaq
// daha sonra enter vuranda ele etmeliyikki printe verdiyi reqemden 1 evvel ve 1 sonraki cixsin
// trapezden istifade edek

import 'dart:io';
import 'dart:math';

void main() {
//   while (true) {
//     try {
//       print('add your num:');
//       var choice = stdin.readLineSync()!;
//       var answer = int.parse(choice);
//       var a = answer - 1;
//       var b = answer + 1;
//       print('$a, $b');
//       break;
//     } catch (e) {
//       print('wrong command');
//     }
//   }
// }
//  1 100 random reqem  yarat
//  istifadeciden 1 den 100 reqem teleb et

// consolda istifadecin reqemi ile randomu beraber et
// beraber olmasa coxald ve ya azalt
//

  print('write your numb');
  var randomNum = Random().nextInt(101);
  while (true) {
    var choice = int.parse(stdin.readLineSync()!);

    var tie = choice == randomNum;

    if (tie) {
      print('isTie');
      break;
    } else if (choice > randomNum) {
      print('cox getdin biraz dus');
    } else {
      print('birazda qalx');
    }
  }
}
