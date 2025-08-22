// import 'dart:io';
import 'dart:io';

void main() {
  // showData();
  // int x = 12;
  // Future<int> result = number(x);

  // int result = xxx(x);
  // print(result);
  // Future.delayed(t, () async {
  //   int num = 10;
  //   await print(info2);
  // });

  // Future<int> y = Future<int>.delayed(Duration(seconds: 1), () {
  //   return 100;
  // });

  // print('-0-');
  // sleep(Duration(seconds: 4));
  // print(y);

  // List<String> ww = <String>['x', 'y', 'asdfdsfz:hide'];
  // for (final String element in ww) {
  //   print('------------');
  //   print(element.contains(':hide'));
  //   print(element.split(':'));
  //   print(element.split(':hide'));
  //   print(element.split(':hide').first);
  //   print(element.indexOf(':hide'));
  // }

////////////////////////////////////
  // final List<String> ww = <String>['m', 'p', 's', 'k', 'a', 'b', 'c', 'd'];

  // print(ww);
  // print('z'.compareTo('a'));
  // print('a'.compareTo('z'));
  // ww.sort(
  //   (String a, String b) {
  //     if (a == 'k') {
  //       return -1;
  //     }

  //     if (b == 'k') {
  //       return 1;
  //     }
  //     return 0;
  //   },
  // );

  // print(ww);

  final parts = <String>['shoulders', 'knees', 'toes'];
// Note: 'head' has already been removed.
  final retVal = parts.remove('head'); // false
  print(retVal); // [shoulders, knees, toes]
  print(parts); // [shoulders, knees, toes]
}

Future<int> aa() {
  return Future<int>.delayed(Duration(seconds: 3), () {
    return 100;
  });
}

Future<int> number(int num) async {
  int result = 0;
  Duration t = Duration(seconds: 3);

  await Future.delayed(t, () {
    result = num + 1;
  });

  return result;
}

int xxx(int num) {
  return num + 1;
}




/* void showData() {
  startTask();
  accessData();
  fetchData();
}

void startTask() {
  String info1 = "요청수행 시작";
  print(info1);
}
 
void accessData() {
  Duration time = Duration(seconds: 3);

  if (time.inSeconds > 2) {
    Future.delayed(time, () {
      String info2 = 'xxx';
      print(info2);
    });
  } else {
    String info2 = 'yyy';
    print(info2);
  }
}

void fetchData() {
  String info3 = '잔액은 1000원 입니다';
  print(info3);
}
 */