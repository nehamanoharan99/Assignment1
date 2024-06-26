import 'dart:io';

void checkDayOfWeek(String day) {
  day = day.toLowerCase(); // convert to lowercase for case-insensitive comparison

  List<String> weekdays = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday'];
  List<String> weekendDays = ['saturday', 'sunday'];

  if (weekdays.contains(day)) {
    print('$day is a weekday');
  } else if (weekendDays.contains(day)) {
    print('$day is a weekend day');
  } else {
    print('Invalid day of the week');
  }
}

void main() {
  print("Enter a day of the week: ");
  String? input = stdin.readLineSync();

  if (input != null) {
    checkDayOfWeek(input);
  }
}