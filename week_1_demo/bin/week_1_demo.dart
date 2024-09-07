import 'dart:io';

import 'package:week_1_demo/person.dart';
import 'package:week_1_demo/week_1_demo.dart';

void main(List<String> arguments) {
  String name = prompt('Enter your name: ');

  int age = promptAge('Enter your age: ');

  Person person = Person(name, age);

  stdout.writeln('Your name is ${person.name} and your age is ${person.age} years old.');
}
