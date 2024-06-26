import 'dart:io';

void main() {
  print("Enter a number: ");
  String? input = stdin.readLineSync();

  if (input == null) {
    print("Invalid input. Please enter a number.");
    return;
  }

  int num;
  try {
    num = int.parse(input);
  } catch (e) {
    print("Invalid input. Please enter a number.");
    return;
  }

  print("Multiplication table of $num:");
  for (int i = 1; i <= 10; i++) {
    print("$num x $i = ${num * i}");
  }
}