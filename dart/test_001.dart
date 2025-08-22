void main() {
  // final List<SideMenu> list = <SideMenu>[SideMenu.user, SideMenu.kiosk];
  // final ww = list.map(
  //   (SideMenu e) {
  //     return e.serverValue;
  //   },
  // ).toList();
  // print(ww);
  // print(ww.first.runtimeType);
  // print(5 ~/ 3);

  // final List<String> characterList = 'side'.split('');
  // print(characterList);

  RegExp sixDigitsOnly = RegExp(r'^[0-9]{6}$');
  RegExp eightDigitsOnly = RegExp(r'^[0-9]{8}$');
  RegExp digitsWithHyphen = RegExp(r'^[0-9]{4}-[0-9]{1,2}-[0-9]{1,2}$');
  RegExp digitsWithSlash = RegExp(r'^[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}$');
  final RegExp xx = RegExp(r'^[0-9-/]{6,10}$');

  // print(DateTime.now().compareTo(DateTime.now()));
  print(DateTime(2022, 2, 2, 0, 0, 0, 0, 0).isAtSameMomentAs(DateTime(2022, 2, 2)));
  final String test = '999955';
  // print(sixDigitsOnly.hasMatch(test));
  // print(eightDigitsOnly.hasMatch(test));
  // print(digitsWithHyphen.hasMatch(test));
  // print(digitsWithSlash.hasMatch(test));
  // print(xx.hasMatch(test));
  if (RegExp(r'^[0-9]{6}$').hasMatch(test)) {
    print(test.substring(2, 5));
  }
  int year = 11;
  int month = 11;
  int day = 11;

  final DateTime ww = DateTime(2022, 9, 03);
  print(ww.day.runtimeType);
}

enum SideMenu {
  user(
    translationKeyGeneral: 'Staff',
    serverValue: 'user',
  ),
  kiosk(
    translationKeyGeneral: 'Kiosk',
    serverValue: 'kiosk',
  ),
  ;

  const SideMenu({
    required this.translationKeyGeneral,
    required this.serverValue,
  });

  final String translationKeyGeneral;
  final String serverValue;
}
