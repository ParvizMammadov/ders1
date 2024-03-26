void main() {
  List<int> numbs = [3, 4, 7, 5];
  numbs.add(5);
  numbs.addAll([11, 13, 12]);
  print(numbs.every((element) => element >= 3));
}
