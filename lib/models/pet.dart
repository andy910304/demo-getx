import 'package:flutter/widgets.dart';

class Pet {
  String name;
  int age;

  Pet({
    required this.name,
    required this.age,
  });

  Pet copyWith({
    required String name,
    required int age,
  }) {
    return Pet(
      name: name,
      age: age,
    );
  }
}
