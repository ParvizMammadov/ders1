void main() {
  List<int> list = [1, 2, 3, 4, 5];
  int max = list[0];
  for (int element in list) {
    if (element < max) {
      max = element;
    }
  }
  print(max); // 5
}
