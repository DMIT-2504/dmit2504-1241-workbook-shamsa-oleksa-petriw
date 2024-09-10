import 'dart:io';
import 'package:intl/intl.dart';

import 'package:four_functions_problems/four_functions_problems.dart';

void main(List<String> arguments) {
//   Write a program to tally up total change from user’s pockets. The method GetTotal() will have
// number of pennies, nickels, dimes, quarters, loonies and twoonies passed into it and will return the
// total amount. All values entered must be integers and positive. Validation is required to ensure a
// negative value is not allowed

int pennies = PromptInt("Enter number of pennies: ");
int nickels = PromptInt("Enter number of nickels: ");
int dimes = PromptInt("Enter number of dimes: ");
int quarters = PromptInt("Enter number of quarters: ");
int loonies = PromptInt("Enter number of loonies: ");
int twoonies = PromptInt("Enter number of twoonies: ");

double total = GetTotal(pennies, nickels, dimes, quarters, loonies, twoonies);

final formatter = NumberFormat.currency(locale: 'en_US', symbol: '\$');

String formattedTotal = formatter.format(total);

stdout.writeln("Your total is ${formattedTotal}");

//Alternate validation, demoed in class:

// int validateInput(){
//   int? value;
//   while(true){
//     String? input = stdin.readLineSync();
//     value = int.tryParse(input!);

//     if(value != null && value >= 0){
//       return value;
//     } else {
//       print("Please enter a valid positive integer.");
//     }
//   }
// }


}