import 'dart:io';

String prompt(String message){
  stdout.write(message);

  return stdin.readLineSync()!;
}

int PromptInt(String message) {
  bool isValid = false;
  int num = 0;

  while(!isValid){
    var userInput = prompt((message));
    try{
      num = int.parse(userInput);
      if(num >= 0) {
        isValid = true;
        stdout.writeln('${num}');
      }
      else {
        stdout.writeln('Invalid input. Please enter a positive number or 0.');
      }
    }
    catch(e){
      stdout.writeln('Invalid input. Please enter an integer.');
    }
  }
  return num;
}

double GetTotal(int pennies, int nickels, int dimes, int quarters, int loonies, int twoonies) {
  const int penny = 1;
  const int nickel = 5;
  const int dime = 10;
  const int quarter = 25;
  const int loonie = 100;
  const int twoonie = 200;
  const int centsPerDollar = 100;

  double sum = 
  (pennies * penny
  + nickels * nickel
  + dimes * dime
  + quarters * quarter
  + loonies * loonie
  + twoonies * twoonie)
  /centsPerDollar;

  return sum;
}

int calculate() {
  return 6 * 7;
}
