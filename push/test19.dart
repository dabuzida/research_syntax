import 'dart:math';

void main() {
  // final zeroList = List<int>.filled(3, 0, growable: true); // [0, 0, 0]

  // final xx = List<int>.generate(3, (int index) => index, growable: false);
  // print(xx); // [0, 1, 4]

  // final List<int> ww = List<int>.generate(31, (int i) => i + 1, growable: false);
  // print(ww);
  // final int thisYear = DateTime.now().year;
  // final List<int> ff = List<int>.generate(150, (int i) => thisYear - i, growable: false);
  DateTime _now = DateTime.now();
  DateTime _15min = DateTime(_now.year, _now.month, _now.day, _now.hour, _now.minute + 15, _now.second, _now.millisecond, _now.microsecond);
  DateTime _20min = DateTime(_now.year, _now.month, _now.day, _now.hour, _now.minute + 20, _now.second, _now.millisecond, _now.microsecond);
  DateTime _30min = DateTime(_now.year, _now.month, _now.day, _now.hour, _now.minute + 30, _now.second, _now.millisecond, _now.microsecond);
  DateTime _40min = DateTime(_now.year, _now.month, _now.day, _now.hour, _now.minute + 40, _now.second, _now.millisecond, _now.microsecond);
  DateTime _50min = DateTime(_now.year, _now.month, _now.day, _now.hour, _now.minute + 50, _now.second, _now.millisecond, _now.microsecond);
  print('>> $_now ----- ${_now.millisecondsSinceEpoch}');
  print('>>15 $_15min ----- ${_15min.millisecondsSinceEpoch}');
  print('>>20 $_20min ----- ${_20min.millisecondsSinceEpoch}');
  print('>>30 $_30min ----- ${_30min.millisecondsSinceEpoch}');
  print('>>40 $_40min ----- ${_40min.millisecondsSinceEpoch}');
  print('>>60 $_50min ----- ${_50min.millisecondsSinceEpoch}');
  print(DateTime.fromMillisecondsSinceEpoch(1745561437748));
  print('guestroom.dateExpiry');
  print('guestroom.dateExpiry'.toLowerCase());
  print(DateTime.fromMillisecondsSinceEpoch(1685581225699));
  print(DateTime.fromMillisecondsSinceEpoch(1685581581791));
}

enum CalendarMonth {
  aa(text: 'aaaaa', numberValue: 1),
  bb(text: 'bbbbb', numberValue: 2),
  cc(text: 'ccccc', numberValue: 3),
  ;

  const CalendarMonth({required this.text, required this.numberValue});

  final String text;
  final int numberValue;
}
