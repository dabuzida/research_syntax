import 'dart:math';

void main() {
  final DateTime dateTime = DateTime.now();
  final int dateMilliseconds = DateTime(dateTime.year, dateTime.month, dateTime.day, dateTime.hour, dateTime.minute).millisecondsSinceEpoch;
  final String dateKey = dateTime.toString().substring(0, 10);
  final String dateKey2 = dateTime.toString().substring(0, 16);

  print(dateTime);
  print(dateKey);
  print(dateKey2);
}

              // final DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(walkSimple.date.toInt());
              // final int dateMilliseconds = DateTime(dateTime.year, dateTime.month, dateTime.day).millisecondsSinceEpoch;
              // final String dateKey = dateTime.toString().substring(0, 10);

