import 'dart:math';

void main() {
  // _xx();
  // _yy();
  // print(max(4, 2.2));
  // print(DateTime.now().toString());
  // print(DateTime.now().toString().substring(5, 16));
  // print(false || true);
  // print(true && false);

  final Columns columns = Columns.name;
  final Columns columns2 = Columns.address;
  final Columns columns3 = Columns.phone;

  final bool zz = columns.xx.keys.contains(AppMode.general);
  final bool zz2 = columns2.xx.keys.contains(AppMode.general);
  final bool zz3 = columns3.xx.keys.contains(AppMode.general);
  // print(zz);
  // print(zz2);
  // print(columns3.xx.keys.contains(AppMode.general) && (columns3.xx[AppMode.general] ?? false));
  // print(columns3.xx[AppMode.general]);
  Access ww = Access();
  ww.enabled = false;

  final DateTime dateTime = DateTime(2025, 7, 7);
  final DateTime dateTime2 = DateTime(2025, 7, 7).toUtc();
  final DateTime dateTime3 = DateTime.utc(2025, 7, 7);

  print('$dateTime, ${dateTime.millisecondsSinceEpoch}');
  print('$dateTime2, ${dateTime2.millisecondsSinceEpoch}');
  print('$dateTime3, ${dateTime3.millisecondsSinceEpoch}');
}

class Access {
  Access({this.enabled = true, this.isDefault = false});
  bool enabled;
  final bool isDefault;
}

enum Columns {
  address(
    allowedAppMode: <AppMode>{},
    defaultEnabledAppMode: <AppMode>{},
    xx: <AppMode, bool>{},
  ),
  name(
    allowedAppMode: <AppMode>{},
    defaultEnabledAppMode: <AppMode>{},
    xx: <AppMode, bool>{
      AppMode.general: false,
    },
  ),
  phone(
    allowedAppMode: <AppMode>{},
    defaultEnabledAppMode: <AppMode>{},
    xx: <AppMode, bool>{
      AppMode.medical: false,
    },
  ),
  gender(
    allowedAppMode: <AppMode>{},
    defaultEnabledAppMode: <AppMode>{},
    xx: <AppMode, bool>{
      AppMode.general: true,
      AppMode.medical: true,
    },
  ),
  ;

  const Columns({required this.allowedAppMode, required this.defaultEnabledAppMode, required this.xx});
  final Set<AppMode> allowedAppMode;
  final Set<AppMode> defaultEnabledAppMode;
  final Map<AppMode, bool> xx;
}

enum AppMode {
  general,
  medical,
}

void _yy() {
  print(DateTime.fromMillisecondsSinceEpoch(1719792000000));
  print(DateTime.fromMillisecondsSinceEpoch(1717200000000));
  print(DateTime.fromMillisecondsSinceEpoch(1714521600000));

  print(DateTime.fromMillisecondsSinceEpoch(1711929600000));

  print(DateTime.fromMillisecondsSinceEpoch(1709251200000));
  print(DateTime.fromMillisecondsSinceEpoch(1706745600000));
  print(DateTime.fromMillisecondsSinceEpoch(1704067200000));
  print(DateTime.fromMillisecondsSinceEpoch(1701388800000));
  //
  print(1709251200000 - 1706745600000);
  print(1706745600000 - 1704067200000);
  print(1704067200000 - 1701388800000);
  print(DateTime.fromMillisecondsSinceEpoch(1701388800000));
  print(DateTime.fromMillisecondsSinceEpoch(1719792000000));
  print(DateTime.fromMillisecondsSinceEpoch(1722470400000));
}

void _xx() {
  final DateTime now = DateTime.now();
  final int thisYear = now.year;
  final int thisMonth = now.month;

  // 이번달: unixTime 시작 ~ unixTime 종료
  final DateTime dateTime_6 = DateTime(thisYear, thisMonth);
  print(dateTime_6);
  final int unixTimeThisMonthStart = DateTime(thisYear, thisMonth).millisecondsSinceEpoch;
  final int unixTimeThisMonthEnd = DateTime(thisYear, thisMonth + 1).millisecondsSinceEpoch - 1;
  print(DateTime.fromMillisecondsSinceEpoch(unixTimeThisMonthEnd));

  for (int i = 0; i < 6; i++) {
    final int currentMonth = thisMonth - i;

    final int borderHead = DateTime(thisYear, currentMonth).millisecondsSinceEpoch;
    final int borderTail = DateTime(thisYear, currentMonth + 1).millisecondsSinceEpoch - 1;
    print('${DateTime.fromMillisecondsSinceEpoch(borderHead)} ${DateTime.fromMillisecondsSinceEpoch(borderTail)}');
  }

  // print(now);
  for (int i = 0; i < 6; i++) {
    // final DateTime ww = now.subtract(const Duration());
    // print(DateTime(thisYear, thisMonth - i));
  }
}
