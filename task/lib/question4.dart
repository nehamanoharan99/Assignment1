import 'dart:io';

void main() {
  int sum = 0;

  while (true) {
    print("Enter a number (or a negative number to quit): ");
    String? input = stdin.readLineSync();

    if (input == null) {
      print("Invalid input. Please enter a number.");
      continue;
    }

    int num;
    try {
      num = int.parse(input);
    } catch (e) {
      print("Invalid input. Please enter a number.");
      continue;
    }

    if (num < 0) {
      break; 
    }

    sum += num; 
  }

  print("Sum of positive numbers: $sum");
}