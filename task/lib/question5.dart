
import 'dart:io';

void main() {
  int rows;
  print("Enter the number of rows: ");
  String? input = stdin.readLineSync();

  if (input == null) {
    print("Invalid input. Please enter a number.");
    return;
  }

  try {
    rows = int.parse(input);
  } catch (e) {
    print("Invalid input. Please enter a number.");
    return;
  }

  for (int i = 1; i <= rows; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write("* ");
    }
    stdout.writeln();
  }
}
