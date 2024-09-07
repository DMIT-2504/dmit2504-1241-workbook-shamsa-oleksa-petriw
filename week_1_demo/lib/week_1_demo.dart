import 'dart:io';

String prompt(String message){
  stdout.write(message);

  return stdin.readLineSync()!;
}

int promptAge(String message){
  bool isValid = false;
  int age = 0;

  while(!isValid){
    var userInput = prompt((message));
    try{
      age = int.parse(userInput);
      isValid = true;
    }
    catch(e){
      stdout.writeln('Invalid input. Please enter an integer.');
    }
  }
  return age;
}