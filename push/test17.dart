import 'dart:math';

void main() {
  // final List<String> _versionList = <String>[
  //   '000.000.000',
  //   '000.000.001',
  //   '000.001.000',
  //   '001.000.000',
  //   '000.000.010',
  //   '000.010.000',
  //   '010.000.000.111',

  //   // '000.000.999',
  //   // '000.999.000',
  //   // '999.000.000',
  // ];

  // RegExp regExp = RegExp(r'^[0-9]{3}\.[0-9]{3}\.[0-9]{3}$');

  // for (String element in _versionList) {
  //   final bool isValid = regExp.hasMatch(element);

  //   print('$element: $isValid');
  // }

  // #
  // List<String> wrt = <String>[];
  // for (int i = 0; i < 10; i++) {
  //   wrt.add(makeString(5));
  // }
  // print(wrt);

  // #
  // for (int i = 0; i < 10; i++) {
  //   // print(Random().nextInt(1));
  //   print(Random().nextInt(10) + 7);
  // }

  // final aaa = <String>{'A', 'B', 'C'};
  // final bbb = <String>{'A', 'E', 'F'};
  // aaa.add('value');
  // print(aaa);
  // aaa.add('value');
  // print(aaa);

  // List<String> rr = <String>['a', 'b', 'c'];
  // print(rr);
  // final List<String?> ww = rr.map(
  //   (String e) {
  //     if (e == 'a') {
  //       return 'vvv';
  //     }
  //     return e;
  //   },
  // ).toList();
  // print(ww);

  // rr.reduce(
  //   (value, element) {
  //     print('>> $value $element');
  //     return value + element;
  //   },
  // );

  // People? people = People();

  // print(people.name);
  // people = null;
  // print(people?.name);

  // people?.name = 'asdf';
  // print(people?.name);

  // People aa = People();
  // People bb = People();
  // People? cc;
  // print(aa.hashCode);
  // print(bb.hashCode);

  // aa.name = '234tagr';

  // int? dd;
  // print(cc.hashCode);
  // print(dd.hashCode);

  // print(int.tryParse(''));

// yyyy-MM-dd HH:mm
  final DateTime dateTime = DateTime.parse('2021-07-08');
  final DateTime dateTime2 = DateTime(2025, 5, 11);
  final DateTime dateTime3 = DateTime.parse('2025-11-23 11:33');
  final DateTime dateTime4 = DateTime.parse('2025-11-23 23:33');
  // final DateTime dateTime = DateTime.parse('2021-07-08T08:21:14Z');
  print(dateTime);
  print(dateTime2);
  print(dateTime3);
  print(dateTime4);
}

class People {
  String name = 'zxcv';
}

// void xx(){

// const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
// Random _rnd = Random();

// String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
//     length, (_) => _chars.codeUnitAt(Random().nextInt(_chars.length))));
// }

String makeString(int length) {
  return List<String>.generate(length, (_) => 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890'[Random().nextInt('AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890'.length)]).join();
}

enum Type {
  fire(name: 'invalid'),
  ice(name: 'invalid'),
  ;

  const Type({required this.name});

  final String name;
}
