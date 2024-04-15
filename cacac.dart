import 'dart:io';

void main() {
  imput(first: 5, second: 10);
}

imput({int? first, int? second}) {
  print(' ${first! * second!}');
}
