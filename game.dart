import 'dart:math';

void main() {
  // // Создание объекта Random
  // var random = Random();

  // // Генерация целого числа в диапазоне от 1 до 6 (имитация броска игральной кости)
  // var randomNumber = random.nextInt(6);

  // // Вывод результата броска
  // print("Выпало: $randomNumber");

  var num = Random();
  var randomNumber = num.nextInt(100) + 1;
  print('you got $randomNumber');
}
