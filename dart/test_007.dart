void main() {
  final MaintestType ww = MaintestType.animal;
  // print(ww.name);
  final DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(1753773225486);
  // print(dateTime);
  // print(dateTime.toString().substring(5, 19));

  final DateTime now = DateTime.now();

  // final int last30 = now.subtract(const Duration(days: 30)).millisecondsSinceEpoch;
  final DateTime last30 = DateTime(2022);
  // print(now);
  // print(last30);

  // print(now);
  // final int xx2 = now.millisecondsSinceEpoch + 2592000000;
  // print(DateTime.fromMillisecondsSinceEpoch(xx2));

  // final int xx = DateTime(now.year, now.month, now.day + 1).millisecondsSinceEpoch - 1;
  // // final int xx = DateTime(now.year, now.month, now.day + 1).millisecondsSinceEpoch;
  // print(DateTime.fromMillisecondsSinceEpoch(xx));
  // DateTime? w2w;
  // print(w2w!.compareTo(DateTime(2022)));
  // print(last30.isAtSameMomentAs(DateTime(2022, 1, 1, 0)));

  // String ee = 'asdfjklasfkjlafsdjkl -//- 123213412358912352389';
  // final List<String> rr = ee.split('-//-');
  // print(rr);
  // for (final String element in rr) {
  //   print(element.trim());
  // }
  final DateTime tt = DateTime.now();
  print(tt);
  print(tt.toString().substring(0, 10));
  print(tt.toString().substring(11, 13));

  print(tt.hour);
  print(tt.minute);
  print(tt.second);
  print(tt.millisecond);
  print(tt.microsecond);
  final String name = '${tt.hour}${tt.minute}${tt.second}${tt.millisecond}${tt.microsecond}';
  print(name);
}

enum MaintestType {
  animal(
    titleTranslationKey: 'common.text.main_test_animal',
  ), // 동물 (default)
  city(
    titleTranslationKey: 'common.text.main_test_city',
  ), // 도시
  occupation(
    titleTranslationKey: 'common.text.main_test_occupation',
  ), // 직업
  nation(
    titleTranslationKey: 'common.text.main_test_nation',
  ), // 국가
  ;

  const MaintestType({
    required this.titleTranslationKey,
    // required this.guideTranslationKey,
  });

  final String titleTranslationKey;
  // final String guideTranslationKey;

  static MaintestType make(String? serverValue) {
    if (serverValue == null) {
      return MaintestType.animal;
    }

    for (final MaintestType maintestType in MaintestType.values) {
      if (maintestType.name == serverValue) {
        return maintestType;
      }
    }

    return MaintestType.animal;
  }
}
