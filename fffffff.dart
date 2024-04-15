// Easy, Medium, Hard (i, o)
// Create Random Password with level
// Create encoded token with password

import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  print("Hansi seviyyede parol duzeldilsin ?");
  print("[1] Asan\n[2] Orta\n[3] Cetin\n[4] Cixish");
  userInput();
}

userInput() {
  String input = stdin.readLineSync()!;
  switch (input) {
    case "1":
      createEasyPassword();
    case "2":
      createMediumPassword();
    case "3":
      createHardPassword();
    case "4":
      print('chiao');
      break;

    default:
      print("Lutfen duzgun sechim edin !");
      userInput();
  }
}

void createEasyPassword() {
  List<int> randomNums = List.generate(8, (index) => Random().nextInt(9));
  String password = "";
  randomNums.forEach((element) {
    password += element.toString();
  });
  String encodedPassword = base64UrlEncode(utf8.encode(password));
  String decodedPassword = utf8.decode(base64Url.decode(encodedPassword));
  print("Sizin shifre: $password");
  print("Kripto formasi: $encodedPassword");
}

void createMediumPassword() {
  List<String> randomNums =
      List.generate(8, (index) => Random().nextInt(9).toString());
  List<int> randomLettersCodes =
      List.generate(3, (index) => Random().nextInt(33) + 85);
  List<String> passList = [];
  randomNums.forEach((element) {
    passList.add(element);
  });
  randomLettersCodes.forEach((element) {
    passList.add(String.fromCharCode(element));
  });
  passList.shuffle();
  String password = "";
  passList.forEach((element) {
    password += element;
  });
  String encodedPassword = base64UrlEncode(utf8.encode(password));
  String decodedPassword = utf8.decode(base64Url.decode(encodedPassword));
  print("Sizin shifre: $password");
  print("Kripto formasi: $encodedPassword");
}

void createHardPassword() {
  List<String> randomNumbs =
      List.generate(8, (index) => Random().nextInt(9).toString());
  List<int> randomLettersCodes =
      List.generate(3, (index) => Random().nextInt(39) + 90);
  List<int> randomSymbolsCodes =
      List.generate(4, (index) => Random().nextInt(33) + 39);
  List<String> passList = [];
  randomNumbs.forEach((element) {
    passList.add(element);
  });
  randomLettersCodes.forEach((element) {
    passList.add(String.fromCharCode(element));
  });
  randomSymbolsCodes.forEach((element) {
    passList.add(String.fromCharCode(element));
  });
  passList.shuffle();
  String password = "";
  passList.forEach((element) {
    password += element;
  });
  String encodedPassword = base64UrlEncode(utf8.encode(password));
  String decodedPassword = utf8.decode(base64Url.decode(encodedPassword));
  print("Sizin shifre: $password");
  print("Kripto formasi: $encodedPassword");
}
