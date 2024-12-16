import 'dart:math';

void main() {
  final TabletLanguage ww = TabletLanguage.ko;
  final Test ww2 = Test.a1a2;
  // ww.name;
  print(ww.name);
  print(ww2.name);
}

enum TabletLanguage {
  ko(code: 'ko', name: '한국어'),
  en(code: 'en', name: 'English'),
  ;

  const TabletLanguage({required this.code, required this.name});

  final String code;
  final String name;
}

enum Test {
  a1a2(code: 'ko', name: '123455'),
  bb(code: 'en', name: '9979797'),
  ;

  const Test({required this.code, required this.name});

  final String code;
  final String name;
}
