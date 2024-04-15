void main() {
  PersonInfo Pako = PersonInfo(
      name: 'pako',
      surname: 'Mammadov',
      age: 30,
      heigh: 1.80,
      hobby: 'Moto',
      married: false,
      race: 'caucasian');
  // PersonInfo Huseyn =
  //     PersonInfo('huseyn', 'mammadov', 30, 1.80, 'moto', false, 'caucasian');
  print('${Pako.name}, ${Pako.age}');
}

class PersonInfo {
  String name;
  String surname;
  int age;
  double heigh;
  String race;
  String hobby;
  bool married;

  PersonInfo(
      {required this.name,
      required this.surname,
      required this.age,
      required this.heigh,
      required this.hobby,
      required this.married,
      required this.race}) {}
}
