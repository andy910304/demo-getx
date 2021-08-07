import 'package:get/get.dart';

class RxPet {
  late final RxString name;
  late final RxInt age;
  RxPet({
    required this.name,
    required this.age,
  });
}

class Pet {
  late RxPet rx;

  Pet({
    required String name,
    required int age,
  }) {
    this.rx = RxPet(name: name.obs, age: age.obs);
  }

  Pet copyWith({
    required String name,
    required int age,
  }) {
    return Pet(
      name: name,
      age: age,
    );
  }

  String get name => this.rx.name.value;
  int get age => this.rx.age.value;

  set name(String value) {
    this.rx.name.value = value;
  }

  set age(int value) {
    this.rx.age.value = value;
  }
}
