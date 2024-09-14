import 'dart:io';

int calculate() {
  return 6 * 7;
}

String prompt(String message){
  stdout.write(message);

  return stdin.readLineSync()!;
}
