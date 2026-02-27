import 'dart:math';

void main() {
  // _xx('1', 1);
  // _xx('2', 5);
  // _xx('3', 2);
  // final int? ww = int.tryParse('');

  final ww = [1, 2, 3, 4, 5];
  ww.shuffle();

  print(ww);
}

Future<void> _xx(String text, int n) async {
  // await Future.delayed(Duration(seconds: n), () => print(text));
  // for (int i = 0; i < n; i++) {}
  // print('>> $text');
}

Future<void> _test() async {
  _task('a', 10);
  _task('b', 10000);
  _task('c', 100);

  // _taskAsync('a', 1);
  // _taskAsync('b', 5);
  // _taskAsync('c', 2);
}

Future<void> _task(String text, int count) async {
  for (int i = 0; i < count; i++) {}
  print('normal: $text');
}

void _taskAsync(String text, int count) {
  print('>> $text');
  for (int i = 0; i < 10000000000; i++) {}
  Future.delayed(
    Duration(seconds: count),
    () {
      print('async: $text');
    },
  );
}
